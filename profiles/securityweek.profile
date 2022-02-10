{
  "source": {
    "name": "SecurityWeek",
    "profileName": "securityweek",
    "address": "https://www.securityweek.com/",
    "imageURL": "https://www.securityweek.com/sites/default/files/securityweek_logo.jpg",
    "retrivalMethod": "scraping",
    "newsPath": "https://feeds.feedburner.com/securityweek",
    "scrapingTargets": {
	  "containerList": "div#bodyblock > ul",
      "linkContainers": "li.regularitem > h4.itemtitle",
	  "links": "a[href]"
    }
  },
  "scraping": {
    "type": "no-action",
	"meta" : {
		"author" : "div > div.submitted > div > a",
		"publish_date" : "",
		"title" : "h2.page-title",
		"description" : "meta[name=description]",
		"image_url" : ""
	},
    "content": {
      "container": "div.node > div.content",
      "remove": "p:first-child;p > strong > span;div.ad_in_content;div.sharethis;div.author_content;div.sponsored_links_box;div.author-terms;div.disqus_thread;noscript"
    }
  }
}

