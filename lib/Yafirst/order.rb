module Yafirst
  class Order
    attr_reader :entries

    # To change this template use File | Settings | File Templates.
    def initialize
      @entries = []

    end

    def add_entry(entry)
      @entries << entry
    end

    def total
      result= Money.new(0.0, :USD)
      @entries.each { |e| result.add(e.item.price, e.item.quantity) }
      result.round
      result
    end

    def total2
      result = Money.new
      @entries.each{|e|result.add(e.item.price * e.item.quantity)}
      result.round
      result
    end

  end

end
