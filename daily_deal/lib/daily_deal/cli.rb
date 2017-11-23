class DailyDeal::CLI

  def call
    puts "Today's Daily Deals:"
    list_deals
  end

  def list_deals
    # here doc - http://blog.jayfields.com/2006/12/ruby-multiline-strings-here-doc-or.html
    puts <<-DOC.gsub /^\s*/, ''
      1. PCH Digital Pulse Massager - $27 - Still Available!
      2. Lenovo ThinkPad 11E 11.6 - $199.99 - Still Available!
    DOC
  end
end
