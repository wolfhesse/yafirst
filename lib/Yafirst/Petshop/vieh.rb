module Yafirst
  module Petshop
    class Vieh
      attr_reader :name
      # To change this template use File | Settings | File Templates.
      def initialize(params)
        @name = params[:name]
      end

      def lick_things(i=nil)
        "#{@name}: is licking things"
      end
    end
  end
end
