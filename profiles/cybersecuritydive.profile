{
  "source": {
    "name": "CyberSecurity Dive",
    "profileName": "cybersecuritydive",
    "address": "https://www.cybersecuritydive.com/",
    "imageURL": "https://pbs.twimg.com/profile_images/1306956880368070660/V0CeoY3v_400x400.jpg",
    "retrivalMethod": "scraping",
    "newsPath": "https://www.cybersecuritydive.com/",
    "scrapingTargets": {
      "containerList": "section.dash-feed",
      "linkContainers": "h3[id^=feed-item-title]",
      "links": "a[href]"
    }
  },
  "scraping": {
    "type": "no-scraping",
    "content": {
      "container": "div.article-body",
      "remove": "div.hybrid-ad-wrapper"
    }
  }
}

