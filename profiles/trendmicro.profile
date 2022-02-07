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
    "content": {
      "container": "main.main--content",
      "remove": "section.tag--list;div.jwPlayer"
    }
  }
}

