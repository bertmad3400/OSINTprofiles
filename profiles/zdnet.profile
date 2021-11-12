{
  "source": {
    "name": "ZDNet",
    "profileName": "zdnet",
    "address": "https://www.zdnet.com/",
    "imageURL": "https://www.zdnet.com/a/fly/bundles/zdnetcore/images/logos/zdnet-logo-large.png",
    "retrivalMethod": "scraping",
    "newsPath": "https://www.zdnet.com/topic/security/",
    "scrapingTargets": {
	  "containerList": "div.river",
      "linkContainers": "article.item",
	  "links": "a[href]"
    }
  },
  "scraping": {
    "type": "no-action",
    "content": {
      "container": "div.storyBody",
      "remove": "div.relatedContent;section.leadgenads;div.shortcode"
    }
  }
}
