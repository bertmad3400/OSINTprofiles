{
  "source": {
    "name": "Latest Hacking News",
    "profileName": "latesthackingnews",
    "address": "https://latesthackingnews.com/",
	"imageURL": "https://latesthackingnews.com/wp-content/uploads/2021/01/LHN.png",
    "retrivalMethod": "scraping",
    "newsPath": "https://latesthackingnews.com/category/cyber-security-news/",
	"scrapingTargets": {
	  "containerList": "ul.penci-wrapper-data",
	  "linkContainers": "h2.penci-entry-title",
	  "links": "a[href]"
	}
  },
  "scraping": {
    "type": "JS:fixRelativeLinks",
	"meta" : {
		"author" : "",
		"publish_date" : "meta[property='article:published_time']",
		"title" : "meta[property='og:title']",
		"description" : "meta[property='og:description']",
		"image_url" : "meta[property='og:image']"
	},
    "content": {
	  "container": "div#penci-post-entry-inner",
      "remove": "div.post-tags"
    }
  }
}

