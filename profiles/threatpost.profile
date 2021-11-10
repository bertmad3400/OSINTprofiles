{
  "source": {
    "name": "ThreatPost",
    "profileName": "threatpost",
    "address": "https://threatpost.com/",
    "imageURL": "https://media.threatpost.com/wp-content/uploads/sites/103/2018/04/12084846/tp_twitter.png",
    "retrivalMethod": "rss",
    "newsPath": "https://threatpost.com/feed"
  },
  "scraping": {
    "type": "no-action",
    "content": {
	  "containerID": "",
      "containerClass": "c-article__content",
      "element": "p;h2;img;blockquote",
      "class": "",
      "remove": "img,wp-image-141989",
      "recursive": "False"
    }
  }
}
