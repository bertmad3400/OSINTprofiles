{
  "source": {
    "name": "The Record",
    "profileName": "therecord",
    "address": "https://therecord.media/",
    "imageURL": "https://www.therecord.com/assets/svg/logo-therecord.svg",
    "retrivalMethod": "scraping",
    "newsPath": "https://therecord.media/all-news/",
    "scrapingTargets": {
      "linkClass": "news__thumb",
      "element": "div",
      "class": "news__new news__new--featured"
    }
  },
  "scraping": {
    "type": "no-action",
    "content": {
	  "containerID": "",
      "containerClass": "",
      "element": "div",
      "class": "col-right",
      "remove": "div,share-icons-bottom;div,tags;div,bottom-author;h1,single-page-title",
      "recursive": "True"
    }
  }
}

