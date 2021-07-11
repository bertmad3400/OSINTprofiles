{
  "source": {
    "name": "The DFIR Report",
    "profileName": "dfirreport",
    "address": "https://thedfirreport.com/",
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

