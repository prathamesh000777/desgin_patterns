require_relative 'colleague_base'
module MediatorPattern
  module Colleague
    class Upstox < ColleagueBase
      def initialize(mediator)
        super(mediator)
        puts 'Upstox signed up for Exchange'
      end
    end
  end
end
