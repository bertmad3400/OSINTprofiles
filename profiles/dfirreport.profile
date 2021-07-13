{
  "source": {
    "name": "The DFIR Report",
    "profileName": "dfirreport",
    "address": "https://thedfirreport.com/",
    "imageURL": "https://pbs.twimg.com/profile_images/1247257789660934144/2AaKCNiy_400x400.jpg",
    "retrivalMethod": "scraping",
    "newsPath": "https://thedfirreport.com/",
    "scrapingTargets": {
      "linkClass": "",
      "element": "h2",
      "class": "entry-title"
    }
  },
  "scraping": {
    "type": "no-action",
    "details": {
      "title": {
        "containerClass": "entry-header",
        "element": "h1",
        "class": "entry-title"
      },
      "subtitle": "",
      "date": {
        "containerClass": "posted-on",
        "element": "time",
        "class": "entry-date"
      },
      "author": ""
	},
    "content": {
      "containerClass": "",
      "element": "div",
      "class": "entry-content",
      "headerImage": "",
      "remove": "div,sharedaddy;div,jp-relatedposts;noscript,",
      "recursive": "True"
    }
  }
}

