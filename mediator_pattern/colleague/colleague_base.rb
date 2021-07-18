module MediatorPattern
  module Colleague
    class ColleagueBase
      attr_accessor :coll_code

      def initialize(mediator)
        @mediator = mediator
        mediator.add_colleagues(self)
      end

      def sale_offer(stock, shares)
        @mediator.sale_offer(stock, shares, coll_code)
      end

      def buy_offer(stock, shares)
        @mediator.buy_offer(stock, shares, coll_code)
      end
    end
  end
end
