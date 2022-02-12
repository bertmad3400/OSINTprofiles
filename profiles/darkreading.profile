{
  "source": {
    "name": "DarkReading",
    "profileName": "darkreading",
    "address": "https://www.darkreading.com/",
    "imageURL": "https://beta.darkreading.com/images/og-image.jpg",
    "retrivalMethod": "scraping",
    "newsPath": "https://www.darkreading.com/threat-intelligence/",
    "scrapingTargets": {
      "containerList": "div.infinite-scroll-component",
      "linkContainers": "div.topic-content-article",
      "links": "a.article-title[href]"
    }
  },
  "scraping": {
    "type": "no-action",
	"meta" : {
		"author" : "",
		"publish_date" : "meta[property='article:published_time']",
		"title" : "meta[property='og:title']",
		"description" : "meta[property='og:description']",
		"image_url" : "meta[property='og:image']"
	},
    "content": {
      "container": "div.article-content",
      "remove": ""
    }
  }
}

