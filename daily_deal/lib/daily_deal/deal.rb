class DailyDeal::Deal
  attr_accessor :name, :price, :availability, :url
  def self.today
    # Scrape Woot and Meh and then return deals based on that data
    self.scrape_deals
  end

  def self.scrape_deals
    deals = []

    deals << self.scrape_woot
    deals << self.scrape_meh
    # Go to woot, find the product
    # extract the properties
    # instantiate a deal

    # Go to meh...

    # deal_1 = self.new
    # deal_1.name = "PCH Digital Pulse Massager"
    # deal_1.price = "$27"
    # deal_1.availablility = true
    # deal_1.url = "https://meh.com/"
    #
    # deal_2 = self.new
    # deal_2.name = "Lenovo ThinkPad 11E 11.6"
    # deal_2.price = "$199.99"
    # deal_2.availablility = true
    # deal_2.url = "http://www.woot.com/offers/lenovo-thinkpad-11-6-quad-core"
    # [deal_1, deal_2]
    deals
  end
  def self.scrape_woot
    doc = Nokogiri::HTML(open("https://woot.com"))
    # DailyDeal::Deal.scrape_woot
    #doc.to_html
    deal = self.new
    deal.name = doc.search("h2.main-title").text
    deal.price = doc.search("div.price-holder span.price").text
    deal.availability = true
    deal.url = doc.search("a.wantone").first.attr("href")
    deal
  end

  def self.scrape_meh
    doc = Nokogiri::HTML(open("https://meh.com/"))
    # DailyDeal::Deal.scrape_meh
    #doc.to_html
    deal = self.new
    deal.name = doc.search("section.features h2").text.strip
    deal.price = doc.search("button.buy-button").text.gsub("Buy it","").strip
    deal.availability = true
    deal.url = "https://meh.com"
    deal
  end
end
