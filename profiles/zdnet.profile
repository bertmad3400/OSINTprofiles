{
  "source": {
    "name": "ZDNet",
    "profileName": "zdnet",
    "address": "https://www.zdnet.com/",
    "imageURL": "https://www.zdnet.com/a/fly/bundles/zdnetcore/images/logos/zdnet-logo-large.png",
    "retrivalMethod": "scraping",
    "newsPath": "https://www.zdnet.com/topic/security/",
    "scrapingTargets": {
      "linkClass": "",
      "element": "article",
      "class": "item"
    }
  },
  "scraping": {
    "type": "no-action",
    "content": {
	  "containerID": "",
      "containerClass": "",
      "element": "div",
      "class": "storyBody",
      "remove": "div,relatedContent;section,leadgenads;div,shortcode",
      "recursive": "True"
    }
  }
}
