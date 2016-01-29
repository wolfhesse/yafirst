require 'spec_helper'

# require 'petshop'
# require 'warenwirtschaft'


include Yafirst::Warenwirtschaft

describe Yafirst do
  before do


  end
  it 'should have a configured logger' do
    Yafirst.logger.should_not be nil
    Yafirst.logger.info "yafirst logger is configured at #{DateTime.now}"
  end
end

describe Yafirst::Petshop::Vieh do
  before do
    # Yafirst.logger = Logger.new(STDOUT)
    Yafirst.logger.level = Logger::INFO


    @dog = Yafirst::Petshop::Vieh.new(name: 'woofer!')
  end

  context 'attributes' do
    it 'should have a name' do
      @dog.name.should eq 'woofer!'
    end
  end
  context '#lick_things' do
    it 'should return the dog\'s name in a string' do
      @dog.lick_things.should include 'woofer!:'
    end
  end
end

describe Order do
  before do
    Yafirst.logger.level = Logger::INFO
  end

  it 'sums the prices of its line items' do
    order = Order.new
    order.add_entry(LineItem.new(:item => Item.new(
        price: Money.new(1.11, :USD)
    )))
    order.add_entry(LineItem.new(:item => Item.new(
        :price => Money.new(2.22, :USD),
        :quantity => 2
    )))

    expect(order.total).to eq(Money.new(5.55, :USD))
    expect(order.total).to eq(Money.new(5.55, :USD))

    order.add_entry(LineItem.new(:item => Item.new(:price => Money.new(2, :USD), :quantity => 5)))
    expect(order.total).to eq(Money.new(15.55, :USD))
    pp order.entries
  end

end
