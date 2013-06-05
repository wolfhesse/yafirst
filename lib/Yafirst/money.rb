module Yafirst

  class Money
    attr_reader :value, :currency

    def initialize(value, currency)
      @value   = value
      @currency=currency
    end

    def add(another_money, factor)
      @value = @value + another_money.value * factor

      if @currency != another_money.currency
        raise Exception.new(:currency_mismatch)

      end
    end

    def round
      @value = @value.round(2)
    end

    def == (param)
      return true if param.value == @value &&       param.currency == @currency
    end
  end
end
