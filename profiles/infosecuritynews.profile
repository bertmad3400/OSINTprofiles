{
  "source": {
    "name": "Infosecurity News",
    "profileName": "infosecuritynews",
    "address": "https://www.infosecurity-magazine.com/",
    "imageURL": "https://di9mr54a05a64.cloudfront.net/api-infosecurityeurope.expoplatform.com/image/500x500xc-f/MTYyMzg4MDM3MzYwY2E3MmI1YTkyYWI=.png",
    "retrivalMethod": "scraping",
    "newsPath": "https://www.infosecurity-magazine.com/news/",
    "scrapingTargets": {
      "containerList": "div#webpages-list",
      "linkContainers": "div.webpage-item",
      "links": "a[href]"
    }
  },
  "scraping": {
    "type": "no-action",
	"meta" : {
		"author" : "meta[name=author]",
		"publish_date" : "meta[property='article:published_time']",
		"title" : "meta[property='og:title']",
		"description" : "meta[property='og:description']",
		"image_url" : "meta[property='og:image']"
	},
    "content": {
      "container": "div#layout-",
      "remove": ""
    }
  }
}

