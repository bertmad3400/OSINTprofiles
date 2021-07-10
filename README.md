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
So lets say you maybe have found a website you want to include in the feed, it
is certainly possible to create your own profile and then either submit a pull
request to the OSINTprofiles repo or host the feed yourself.

First of all you have to find a website utilizing OG (Open Graph) tags on their
news articles (which is basically any newssite created in this century). After
this try and locate and RSS feed for the website. If that is unfortunatly not
possible, locate the front page for the relevant part of the new sites (some
news sites has multiple "front" page for different topics) and note down the URL.
Now you simply have to fill in those details in the template corresponding to if
the website has a RSS feed or not along with navigating to an article to find
the details described in the next section.

##The contents of a profile
Now, the first few details will be descriped in the template and are simple
things like the url to the news site or the name of it, but as you continue
filling it out, a lot of details will be different kinds of HTML tags and their
class, which allows OSINT'er to extract the right details from the articles by
identifying and extracting those HTML elements described in the profile. To find
those yourself hovewer, it is recommended to simply open up an article from the
news site in question, and then use the "inspect" tool build into most modern
browsers. This will allow you to pinpoint excactly what type of HTML element and
what class a part of the page is.

####The source section
If you have found a news site with a functioning RSS feed, this whole section
will already be described in the "ScrapingTemplate", but if you have found one
where scraping is necessary to collect articles, you will need the following
descriptions:

- **ScrapingTargets**: This section describes which parts of the page to look
  for links for articles in
	- **linkClass**: On some sites the links to the different articles have a
	  class that only referes to those links (like for example "articles" or
	  "stories"). If that is the case on your news site, and that class doesn't
	  seem to be used for anything else, go ahead and fill in the name of that
	  class, otherwise just leave the option empty ("")
	- **element**: This value should match the HTML element surrounding the link
	  (oftentimes the link is within a div or span or some other element)
	- **class**: This should be the class of the element just descriped before
	  surrounding the link. It's important that this class is unique to those
	  containers containing links to other articles, and there's only one link
	  withing each container. If it doesn't exist, then it should just be left
	  empty.

####The scraping section
The prior section was mostly about where to find the articles to scrape, but in
contrast to that, this section is about where on a given article page to find
the relevant details. A concept you will encounter a lot in this section is the
mentions of containers. This is used to describe HTML elements surrounding the
element that is of interrest to you and are based on the idea that if you fx. are
looking for a link, if you then locate a container (could be a div, a span or
something else) containing that link, and no other links, it's easy to extract
the link.

- **type**: This is variable that has been left here for future development, for
  know simply let it be the default value (which is "no-action")
- **details**: The section descriping where to find details that's not a part of
  the main text body
	- **title, subtitle, date, author**: These are used for finding details like
	  the title and the others descriped. They all use the same template for
	  finding the details like so:
		- **containerClass**: This is the class for the container containing the
		  relevant information. If doesn't exist, then it should just be left
		  empty.
		- **element**: This is the HTML element containing the relevant
		  information.
		- **class**: This is the class of the HTML element containing the
		  relevant information. If it doesn't exist, then it should just be left
		  empty.
	  As always, these details should be enough to uniquely identify the needed
	  information.
- **content**: The section describing how to scrape the main text body. This
  section is a little more complicated than the others, as it does not only
  descripe where to find the information, but also how to extract it.
	- **recursive**: This option determines whether the script should scrape
	  recursivly or not. If doing recursive scraping it will scrape all the
	  elements elements described in "containerClass" and "element" along with
	  the elements inside of these. This can simplify the details a lot, as you
	  then only have to descripe the container of the body text, but if this
	  container contians more than just the wanted text (like adds or videos)
	  and can sometimes be the only option to disable this and descripe all the
	  elements comprising the body text.

	  Enabling this can also sometimes have an unwanted side effect. If
	  describing multiple elements (like both <p> and <img>) and enabling this
	  option, if the script the encounters a nested element where both the inner
	  and outer element is described in "element" (like an <img> tag withing a
	  <p> tag), it will duplicate the inner tag, so therefore it's advisiable to
	  set this to false if not needed.
	- **containerClass**: This is the class for the container containing the
	  body text. If it doesn't exist, then it should just be left empty.
	- **element**: These are the elements comprising the body text. If recursive
	  is set to true, it should just be the element of the container for the
	  body text, but if recursive is instead be set to false, it can instead be
	  a list of HTML elements comprising the body text seperated by a semicolon
	  (so for example "p;img;span")
	- **clas**: This is the class for all of the elements described in
	  "element". If it doesn't exist, or the elements doesn't all have a class
	  in common, then it should just be left empty.
	- **headerImage**: Some articles have an image just under the title that
	  isn't programmatically a part of the body text. If that's the case, fill
	  in "containerClass", "element" and "class" in the same way as the details
	  in the "details" section (like author or date), otherwise just leave it
	  empty.
	- **remove**: Sometimes it is impossible to define some rules that include
	  all the needed elements from the body text, but at the same time exclude
	  all the unwanted elements. Therefore it is advised to make some rules that
	  include all the wanted elements (and even those that aren't wanted), and
	  then specify the unwanted elements in this field. That is done by
	  specifying the unwanted elements along with their class in a list
	  seperated by commas and semicolons like this:

	  tag,class;tag,class;tag,class;...

	  If the tag doesn't have a class, that part can simply be left out, but the
	  comma should stay, so lets say we want to remove a <p> tag of the class
	  "text" along with all <img> tags without a class, that would look like
	  this:

	  p,text;img,;

	  It is also possible to specify multiple of the same HTML tag with
	  different classes like this:

	  p,text;p,information;img,;


