module MediatorPattern
  class StockMediator
    def initialize
      @colleague_code = 0
      @colleagues = []
      @stock_buy_offers = []
      @stock_sell_offers = []
    end

    def add_colleagues(coll)
      @colleagues.append(coll)
      @colleague_code += 1
      coll.coll_code = @colleague_code
    end

    def sale_offer(stock_sym, shares, coll_code)
      stock_bought = false
      @stock_buy_offers.each_with_index do |offer, ind|
        next unless offer.stock_sym == stock_sym && offer.no_of_shares == shares

        puts "#{shares} of stock #{stock_sym} sold to colleague code #{coll_code}"
        @stock_buy_offers.delete(ind)
        stock_bought = true
      end
      return if stock_bought

      puts "#{shares} of stock #{stock_sym} added to the inventory"
      @stock_sell_offers.append(StockOffer.new(shares, stock_sym, coll_code))
    end

    def buy_offer(stock_sym, shares, coll_code)
      stock_sold = false
      @stock_sell_offers.each_with_index do |offer, ind|
        next unless offer.stock_sym == stock_sym && offer.no_of_shares == shares

        puts "#{shares} of stock #{stock_sym} bought by colleague code #{coll_code}"
        @stock_sell_offers.delete(ind)
        stock_sold = true
      end
      return if stock_sold

      puts "#{shares} of stock #{stock_sym} added to the inventory"
      @stock_buy_offers.append(StockOffer.new(shares, stock_sym, coll_code))
    end

    def stock_offerings
      @stock_buy_offers.each do |offer|
        puts "#{offer.no_of_shares} shares of #{offer.stock_sym}"
      end

      @stock_sell_offers.each do |offer|
        puts "#{offer.no_of_shares} shares of #{offer.stock_sym}"
      end
    end
  end
end
