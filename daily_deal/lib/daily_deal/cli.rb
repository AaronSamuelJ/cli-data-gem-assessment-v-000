class DailyDeal::CLI

  def call
    list_deals
    menu
    goodbye
  end

  def list_deals
    # here doc - http://blog.jayfields.com/2006/12/ruby-multiline-strings-here-doc-or.html
    puts "Todays Daily Deals:"
    @deals = DailyDeal::Deal.today
    @deals.each.with_index(1) do |deal, i|
      puts "#{i}. #{deal.name} - #{deal.price} - #{deal.availability}"
    end
  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the deal you'd like more info on or type list to see the deals again or type exit:"
      input = gets.strip.downcase
<<<<<<< HEAD

=======
>>>>>>> ccd5e357d8e75cbd3e8f762c295b8cd56e62cf74
      if input.to_i > 0
        the_deal = @deals[input.to_i-1]
        puts "#{the_deal.name} - #{the_deal.price} - #{the_deal.availability}"
      elsif input == "list"
        list_deals
      elsif input == "exit"
        puts "Thank you!"
      else
        puts "Not sure what you want, type list or exit."
      end
    end
  end

  def goodbye
    puts "See you tomorrow for more deals!!!"
  end
end
