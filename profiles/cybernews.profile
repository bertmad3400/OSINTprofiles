{
  "source": {
    "name": "CyberNews",
    "profileName": "cybernews",
    "address": "https://cybernews.com/",
    "imageURL": "https://media.cybernews.com/2020/09/cybernews-logo.png",
    "retrivalMethod": "scraping",
    "newsPath": "https://cybernews.com/news/",
    "scrapingTargets": {
      "containerList": "section > div > div.cells > div.cells__item",
      "linkContainers": "div.space:not(:first-child)",
      "links": "a.button"
    }
  },
  "scraping": {
    "type": "JS:scrollDown",
	"meta" : {
		"author" : "",
		"publish_date" : "meta[property='article:published_time']",
		"title" : "meta[property='og:title']",
		"description" : "meta[property='og:description']",
		"image_url" : "meta[property='og:image']"
	},
    "content": {
      "container": "div.content",
      "remove": "h2#more-from-cybernews ~ p;h2#more-from-cybernews"
    }
  }
}

