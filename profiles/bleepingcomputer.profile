{
  "source": {
    "name": "Bleeping Computer",
    "profileName": "bleepingcomputer",
    "address": "https://www.bleepingcomputer.com/",
    "imageURL": "https://www.bleepstatic.com/logo/bleepingcomputer-logo.png",
    "retrivalMethod": "rss",
    "newsPath": "https://www.bleepingcomputer.com/feed/"
  },
  "scraping": {
    "type": "JS:scrollDown",
    "content": {
      "container": "div.articleBody",
      "remove": "cnx.cnx-main-container;.cnx-in-desktop;.cnx-ps;.cnx-main-container-flex;div.cz-related-article-wrapp"
    }
  }
}
