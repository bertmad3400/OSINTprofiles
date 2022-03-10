{
  "source": {
    "name": "The DFIR Report",
    "profileName": "dfirreport",
    "address": "https://thedfirreport.com/",
    "imageURL": "https://pbs.twimg.com/profile_images/1247257789660934144/2AaKCNiy_400x400.jpg",
    "retrivalMethod": "scraping",
    "newsPath": "https://thedfirreport.com/",
    "scrapingTargets": {
	  "containerList": "div.posts-holder",
      "linkContainers": "h2.entry-title",
	  "links": "a[href]"
    }
  },
  "scraping": {
    "type": "JS:removeTitles",
	"meta" : {
		"author" : "meta[property='og:site_name']",
		"publish_date" : "meta[property='article:published_time']",
		"title" : "meta[property='og:title']",
		"description" : "meta[property='og:description']",
		"image_url" : "meta[property='og:image']"
	},
    "content": {
      "container": "div.entry-content",
      "remove": "div.sharedaddy;div.jp-relatedposts;noscript"
    }
  }
}

