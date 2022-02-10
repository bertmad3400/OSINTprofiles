{
  "source": {
    "name": "Trend Micro",
    "profileName": "trendmicro",
    "address": "https://www.trendmicro.com/",
    "imageURL": "https://upload.wikimedia.org/wikipedia/commons/d/dc/Trendmicro_logo.jpg",
    "retrivalMethod": "scraping",
    "newsPath": "https://blog.trendmicro.com/category/security/",
	"scrapingTargets": {
      "containerList": "div.grid-container",
      "linkContainers": "article.grid-item[data-pageid]",
      "links": "a.heading[href]"
    }

  },
  "scraping": {
    "type": "no-action",
	"meta" : {
		"author" : "p.article-authors__list-items__name",
		"publish_date" : "meta[property='article:published_time']",
		"title" : "meta[property='og:title']",
		"description" : "p.article-details__description",
		"image_url" : "meta[property='og:image']"
	},
    "content": {
      "container": "main.main--content",
      "remove": "section.tag--list;div.jwPlayer"
    }
  }
}

