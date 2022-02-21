{
  "source": {
    "name": "The Record",
    "profileName": "therecord",
    "address": "https://therecord.media/",
    "imageURL": "https://perimeterinstitute.ca/sites/default/files/styles/news_card/public/2020-11/The_Record_Logo_card.jpg?itok=RI0RajAg",
    "retrivalMethod": "scraping",
    "newsPath": "https://therecord.media/all-news/",
    "scrapingTargets": {
	  "containerList": "div.news",
	  "linkContainers": "div.news__new--featured",
	  "links": "a.news__thumb[href]"
    }
  },
  "scraping": {
    "type": "JS:fixTheRecordLinks",
	"meta" : {
		"author" : "",
		"publish_date" : "meta[property='article:published_time']",
		"title" : "meta[property='og:title']",
		"description" : "meta[property='og:description']",
		"image_url" : "meta[property='og:image']"
	},
    "content": {
      "container": "div.col-right",
      "remove": "div.share-icons-bottom;div.tags;div.bottom-author;h1.single-page-title"
    }
  }
}

