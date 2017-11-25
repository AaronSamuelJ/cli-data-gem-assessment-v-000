class DailyDeal::Deal
  attr_accessor :name, :price, :availablility, :url
  def self.today
    # I should return a bunch of instances of deals
    puts <<-DOC.gsub /^\s*/, ''
      1. PCH Digital Pulse Massager - $27 - Still Available!
      2. Lenovo ThinkPad 11E 11.6 - $199.99 - Still Available!
    DOC

    deal_1 = self.new
    deal_1.name = "PCH Digital Pulse Massager"
    deal_1.price = "$27"
    deal_1.availablility = true
    deal_1.url = "https://meh.com/"

    deal_2 = self.new
    deal_2.name = "Lenovo ThinkPad 11E 11.6"
    deal_2.price = "$199.99"
    deal_2.availablility = true
    deal_2.url = "http://www.woot.com/offers/lenovo-thinkpad-11-6-quad-core"
    [deal_1, deal_2]
  end
end
