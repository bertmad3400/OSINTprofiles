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
    "details": {
      "title": {
        "containerClass": "single-page-content",
        "element": "h1",
        "class": "single-page-title"
      },
      "subtitle": "",
      "date": {
        "containerClass": "col-left",
        "element": "p",
        "class": ""
      },
      "author": {
        "containerClass": "col-left",
        "element": "a",
        "class": "author-link"
      }
    },
    "content": {
      "containerClass": "",
      "element": "div",
      "class": "col-right",
      "headerImage": {
		"containerClass": "intro-section",
		"element": "img",
		"class": ""
	  },
      "remove": "div,share-icons-bottom;div,tags;div,bottom-author;h1,single-page-title",
      "recursive": "True"
    }
  }
}

