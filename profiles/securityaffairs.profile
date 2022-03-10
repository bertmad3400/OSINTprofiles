{
  "source": {
    "name": "Security Affairs",
    "profileName": "securityaffairs",
    "address": "https://securityaffairs.co/",
    "imageURL": "https://securityaffairs.co/wordpress/wp-content/uploads/2015/12/logo_SecurityAffairs.png",
    "retrivalMethod": "scraping",
    "newsPath": "https://securityaffairs.co/wordpress/",
    "scrapingTargets": {
      "containerList": "div.sidebar_content",
      "linkContainers": "div.post_wrapper",
      "links": "h3 > a[href]"
    }
  },
  "scraping": {
    "type": "no-action",
	"meta" : {
		"author" : "",
		"publish_date" : "meta[property='article:published_time']",
		"title" : "meta[property='og:title']",
		"description" : "meta[property='og:description']",
		"image_url" : "meta[property='og:image']"
	},
    "content": {
      "container": "div.post_wrapper_inner > div.post_inner_wrapper",
      "remove": "h2:nth-child(2);div.mnet_plugin;div.a-single;div.ssba;div.sharedaddy;div.post_tag;h5.share_label;div#social_share_wrapper"
    }
  }
}

