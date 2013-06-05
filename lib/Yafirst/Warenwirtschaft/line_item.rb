module Yafirst
  module Warenwirtschaft
    class LineItem
      attr_reader :item

      def initialize(params)
        @item = params[:item] if params[:item]
      end
    end


  end

end
