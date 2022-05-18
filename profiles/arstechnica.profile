{
  "source": {
    "name": "Ars Technica",
    "profileName": "arstechnica",
    "address": "https://arstechnica.com/",
    "imageURL": "https://logos-download.com/wp-content/uploads/2021/02/Ars_Technica_Logo.png",
    "retrivalMethod": "scraping",
    "newsPath": "https://arstechnica.com/information-technology/",
    "scrapingTargets": {
      "containerList": "main#main > section.with-xrail:nth-child(2) > div > ol",
      "linkContainers": "li.tease.article",
      "links": "a:first-child"
    }
  },
  "scraping": {
    "type": "JS:scrollDown",
	"meta" : {
		"author" : "a[rel=author] > span[itemprop=name]",
		"publish_date" : "time.date",
		"title" : "meta[property='og:title']",
		"description" : "meta[property='og:description']",
		"image_url" : "meta[property='og:image']"
	},
    "content": {
      "container": "main#main > article",
      "remove": "div.xrail;header.article-header;figure.intro-image;aside;div#article-footer-wrap;div#social-footer;section.article-author;nav.page-numbers;div.story-sidebar;a.enlarge-link;section.promoted-comments;div#mc_embed_signup;div.superscroll-pager"
    }
  }
}

