require_relative 'colleague_base'
module MediatorPattern
  module Colleague
    class Zerodha < ColleagueBase
      def initialize(mediator)
        super(mediator)
        puts 'Zerodha signed up for Exchange'
      end
    end
  end
end
