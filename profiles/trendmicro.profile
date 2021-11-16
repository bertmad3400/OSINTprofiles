{
  "source": {
    "name": "Trend Micro",
    "profileName": "trendmicro",
    "address": "https://www.trendmicro.com/",
    "imageURL": "https://upload.wikimedia.org/wikipedia/commons/d/dc/Trendmicro_logo.jpg",
    "retrivalMethod": "scraping",
    "newsPath": "https://blog.trendmicro.com/category/security/",
	"scrapingTargets": {
      "containerList": "div#pageContent",
      "linkContainers": "div.post.status-publish.category-security:not(.category-consumer)",
      "links": "a[href]"
    }

  },
  "scraping": {
    "type": "no-action",
    "content": {
      "container": "div.post-text",
      "remove": "div.post-text > img:first-child;div.addthis_toolbox"
    }
  }
}

