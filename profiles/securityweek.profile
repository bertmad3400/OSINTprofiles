{
  "source": {
    "name": "SecurityWeek",
    "profileName": "securityweek",
    "address": "https://www.securityweek.com/",
    "imageURL": "https://mms.businesswire.com/media/20210112005589/en/851776/23/SecurityWeek-Logo.jpg",
    "retrivalMethod": "scraping",
    "newsPath": "https://www.securityweek.com/",
    "scrapingTargets": {
	  "containerList": "div.pane-views-lastest-security-block-1",
      "linkContainers": "span.field-content",
	  "links": "a[href]"
    }
  },
  "scraping": {
    "type": "JS:fixRelativeLinks",
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

