#OSINTer profiles

![OSINTer](https://github.com/Combitech-DK/OSINTer/blob/master/logo.png)

##What is a profile?
OSINT'er is a project aiming at building an generic webscraping engine, for
collecting and curating information and articles from a whole range of news
sites by using a couple of rules on how and where to find the relevant
information on these news sites. These rules are internally refered to as
profiles and they are what allows OSINT'er to collect large amounts of
information from a wide range of sites with very little knowledge about the
structure of the sites.

Profiles are in short simply data structured in a JSON format specifying where
and what to scrape. These are custom created on a site to site basis, and since
nearly all news sites have the same structure (more or less) on all of their
articles, they're made to describe some generic rules on where to find given
pieces of information on a page, like in what HTML element with what tag the
date is to be found, or what element is encapsulating the text in the articles.

The goal with the profiles is to be as generic as possible, with the most in
common with each other, to prevent a programming hell of having to program in
every possible edge case that could appear in an article, and instead allow the
script to use a few simple rules for scraping the articles that are the same for
all sites. With that said though there are two different types of profiles, for
two different kinds of websites. The first one is for the sites that offer a
reliable RSS feed which conform to standards. This one is the prefered method,
since it's not only the simplest method for gathering the newest articles from a
site, but oftentimes also the most reliable.

Some site hovewer, does not offer a RSS feed, or maybe they, but it doesn't
conform to the standard. Here classic webscraping of the front page is used to
find the 10 newest articles, and while it does not offer the same reliability as
the RSS feeds, it does allow for gathering of articles from basically any
news site.

##How can you create a profile?

