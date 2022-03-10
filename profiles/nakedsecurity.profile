{
  "source": {
    "name": "Naked Security",
    "profileName": "nakedsecurity",
    "address": "https://nakedsecurity.sophos.com/",
    "imageURL": "https://www.cybersmartnv.org/business/wp-content/uploads/sites/4/2019/07/NakedSecurity1.png",
    "retrivalMethod": "scraping",
    "newsPath": "https://nakedsecurity.sophos.com/",
    "scrapingTargets": {
      "containerList": "div#page",
      "linkContainers": "div.card-content",
      "links": "h3 > a[href]"
    }
  },
  "scraping": {
    "type": "no-action",
	"meta" : {
		"author" : "a[rel=author]",
		"publish_date" : "meta[property='article:published_time']",
		"title" : "meta[property='og:title']",
		"description" : "meta[property='og:description']",
		"image_url" : "meta[property='og:image']"
	},
    "content": {
      "container": "div.entry-content",
      "remove": "div.entry-prefix;aside"
    }
  }
}

