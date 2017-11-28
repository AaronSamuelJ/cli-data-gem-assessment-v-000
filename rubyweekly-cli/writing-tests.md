n_286 = RubyWeeklyScraper.new(286).scrape
n_286.articles.first.title #=> Support Plans for Ruby 2.0.0 and Ruby 2.1

1. We need a RubyWeeklyScraper class
2. That class needs to instantiate the newsletter for that issue number
3. We need to scrape the details of that Newsletter
4. We need to scrape the individual articles for that newsletter and add them to that instance.
