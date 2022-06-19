document.osinterReady = false;

console.log(document.documentElement.clientHeight)

function scroll(lastOffset, i) {
	window.scrollTo(lastOffset, lastOffset + document.documentElement.clientHeight);

	setTimeout(function() {
		var newOffset = window.pageYOffset;

		i = i + 1;

		if (i <= 10 && newOffset != lastOffset) {
			setTimeout(scroll, 1000, newOffset, i);
		} else {
			document.osinterReady = true;
			console.log(newOffset, lastOffset)
		}
	}, 500);
}

scroll(0, 0);
