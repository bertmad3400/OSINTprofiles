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
    "type": "no-action",
    "content": {
      "container": "div.entry-content",
      "remove": "div.sharedaddy;div.jp-relatedposts;noscript"
    }
  }
}

