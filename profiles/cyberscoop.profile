{
  "source": {
    "name": "CyberScoop",
    "profileName": "cyberscoop",
    "address": "https://www.cyberscoop.com/",
    "imageURL": "https://s3.amazonaws.com/sng-global-web-assets/logo/Favicon_CS.png",
    "retrivalMethod": "scraping",
    "newsPath": "https://www.cyberscoop.com/news/threats/",
    "scrapingTargets": {
      "containerList": "div.articles",
      "linkContainers": "div.article-thumb__information",
      "links": "a.article-thumb__title"
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
      "container": "div.article__content-text",
      "remove": "span.article__meta;div.in-this-story"
    }
  }
}

