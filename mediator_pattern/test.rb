module MediatorPattern
  class Test
    def self.run
      bse = StockMediator.new
      broker1 = Colleague::Zerodha.new(bse)
      broker2 = Colleague::Upstox.new(bse)

      broker1.sale_offer('INFY', 100)
      broker2.sale_offer('TCS', 50)
      broker1.buy_offer('TCS', 50)
      broker2.buy_offer('INFY', 100)
      broker2.sale_offer('ITC', 300)

      bse.stock_offerings
    end
  end
end
