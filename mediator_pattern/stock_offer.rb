module MediatorPattern
  class StockOffer
    attr_reader :no_of_shares, :stock_sym, :coll_code

    def initialize(no_of_shares, stock_sym, coll_code)
      @no_of_shares = no_of_shares
      @stock_sym = stock_sym
      @coll_code = coll_code
    end
  end
end
