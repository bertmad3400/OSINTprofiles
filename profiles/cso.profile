{
  "source": {
    "name": "CSO",
    "profileName": "cso",
    "address": "https://www.csoonline.com/",
    "imageURL": "https://allvectorlogo.com/img/2016/06/cso-logo.png",
    "retrivalMethod": "scraping",
    "newsPath": "https://www.csoonline.com/news-analysis/",
    "scrapingTargets": {
      "containerList": "div.main-col",
      "linkContainers": "div.river-well.article",
      "links": "h3 > a[href]"
    }
  },
  "scraping": {
    "type": "no-action",
	"meta" : {
		"author" : "meta[name=author]",
		"publish_date" : "meta[name='DC.date.issued']",
		"title" : "meta[property='og:title']",
		"description" : "meta[property='og:description']",
		"image_url" : "meta[property='og:image']"
	},
    "content": {
      "container": "div[itemprop=articleBody]",
      "remove": "aside;div.brVideoContainer;div#sponsoredfakesidebardiv;div.excerpt-text;aside.fakesidebar;div.end-note;div.lb-main;script"
    }
  }
}

