class RubyWeeklyScraper
  attr_accessor :newsletter, :doc, :issue_number, :issue_date

  def initialize(issue_number)
    @newsletter = Newsletter.new
    @newsletter.issue_number = issue_number
    @doc = Nokogiri::HTML(open("https://rubyweekly.com/issues/#{issue_number}"))
  end

  def scrape
      scrape_details
      @newsletter #=> This instance should have a bunch of articles and details
  end

  def scrape_details

    # populate @newsletter with more data from the newsletter site
    @newsletter.issue_date = @doc.search("table.gowide.lonmo").text.strip.gsub("Issue #{@newsletter.issue_number} — ","")
  end

  def scrape_articles
    # I would break the convention of only knowing about the Newsletter and let it create articles
    @doc.search("td[align='left'] table.gowide").each do |article_table|
      #instantiate the article
      #scrape the data
      #add the article to the newsletter
    end
  end
end # td[align='left'] table.gowide
