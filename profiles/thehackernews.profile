{
  "source": {
    "name": "The Hacker News",
    "profileName": "thehackernews",
    "address": "https://thehackernews.com/",
    "imageURL": "https://thehackernews.com/images/-AaptImXE5Y4/WzjvqBS8HtI/AAAAAAAAxSs/BcCIwpWJszILkuEbDfKZhxQJwOAD7qV6ACLcBGAs/s728-e100/the-hacker-news.jpg",
    "retrivalMethod": "scraping",
    "newsPath": "https://thehackernews.com/",
	"scrapingTargets" : {
		"containerList" : "div#Blog1",
		"linkContainers" : "div.body-post",
		"links" : "a[href]"
	}
  },
  "scraping": {
    "type": "JS:removeTitles;JS:moveImagesOutsideTable",
    "content": {
      "container": "div#articlebody",
      "remove": ".separator:first-child;div.ad_two;div.note-b"
    }
  }
}

