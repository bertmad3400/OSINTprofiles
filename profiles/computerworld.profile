{
  "source": {
    "name": "Computerworld",
    "profileName": "computerworld",
    "address": "https://www.computerworld.com/",
	"imageURL": "https://idge.staticworld.net/ctw/computerworld-logo300x300.png",
    "retrivalMethod": "scraping",
    "newsPath": "https://www.computerworld.com/nl/category/security/",
	"scrapingTargets": {
	  "containerList": "div.main-col",
	  "linkContainers": "div.river-well.article",
	  "links": "h3 > a[href]"
	}
  },
  "scraping": {
    "type": "no-action",
    "content": {
	  "container": "div#drr-container",
      "remove": "div.end-note;aside.native-promo;div.brVideoContainer;div.fakesidebar;aside.fakesidebar;aside.nativo-promo;div.tease-promo;script;figcaption;small.credit"
    }
  }
}

