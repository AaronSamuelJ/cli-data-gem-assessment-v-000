class Forklift
  attr_accessor :name, :price, :url, :hours_open, :list
  def scrape_list
    @list = []
    i = 0
    doc = Nokogiri.HTML(open('http://forkliftlicenseguide.com/forklift-license-in-california'))
    19.times do
      i += 1
      @list << doc.search("#t3-content div article section ul:nth-child(27) li:nth-child(#{i}) span").text
    end
    @list
  end
  def scrape_names
    binding.pry
    @list.select do |place|
      place.split(" - ").first
    end
  end
end
#t3-content div article section ul:nth-child(27) li:nth-child(2) span
#div #t3-content ul li span strong
#t3-content > div > article > section > ul:nth-child(27) > li:nth-child(1) > span
#t3-content > div > article > section > ul:nth-child(27) > li:nth-child(19) > span
# unless doc.search("#t3-content div article section ul:nth-child(27) li:nth-child(#{i}) span").text.class != String
