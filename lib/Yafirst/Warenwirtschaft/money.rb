module Yafirst
  module Warenwirtschaft
    class Money
      attr_reader :value, :currency

      def initialize(value = 0, currency = :USD)
        @value   = value
        @currency=currency
      end

      def add(another_money, factor=1)
        @value = @value + another_money.value * factor

        if @currency != another_money.currency
          raise Exception.new(:currency_mismatch)

        end
      end

      def round
        @value = @value.round(2)
      end

      def == (param)
        return true if param.value == @value && param.currency == @currency
      end

      def * (factor)
        @value *= factor
        self
      end
    end
  end
end
