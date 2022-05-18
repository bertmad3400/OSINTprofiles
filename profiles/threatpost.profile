{
  "source": {
    "name": "ThreatPost",
    "profileName": "threatpost",
    "address": "https://threatpost.com/",
    "imageURL": "https://media.threatpost.com/wp-content/uploads/sites/103/2018/04/12084846/tp_twitter.png",
    "retrivalMethod": "rss",
    "newsPath": "https://threatpost.com/feed"
  },
  "scraping": {
    "type": "no-action",
	"meta" : {
		"author" : "",
		"publish_date" : "",
		"title" : "meta[property='og:title']",
		"description" : "meta[property='og:description']",
		"image_url" : "meta[property='og:image']"
	},
    "content": {
      "container": ".c-article__content",
      "remove": "img.wp-image-141989;footer;img[alt='Infosec Insiders Newsletter']"
    }
  }
}
