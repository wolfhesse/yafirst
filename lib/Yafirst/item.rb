module Yafirst
  class Item
    attr_reader :price, :quantity
    def initialize(params)
@price = params[:price]

@quantity = params[:quantity] || 1

    end

end
end
