require 'spec_helper'

require 'petshop'
require 'warenwirtschaft'

include Yafirst
include Yafirst::Warenwirtschaft

describe Yafirst::Petshop::Vieh do
  before do
    @dog = Yafirst::Petshop::Vieh.new(name: 'woofer!')
  end
  it 'should have a name' do
    @dog.name.should eq 'woofer!'
  end
  context '#lick_things' do
    it 'should return the dog\'s name in a string' do
      @dog.lick_things.should include 'woofer!:'
    end
  end
end

describe Order do

  it 'sums the prices of its line items' do
    order = Order.new
    order.add_entry(LineItem.new(:item => Item.new(
        :price => Money.new(1.11, :USD)
    )))
    order.add_entry(LineItem.new(:item => Item.new(
        :price    => Money.new(2.22, :USD),
        :quantity => 2
    )))
    #expect(order.total).to eq(Money.new(5.55, :USD))


    expect(order.total).to eq(Money.new(5.55, :USD))
    expect(order.total2).to eq(Money.new(5.55, :USD))

    order.add_entry(LineItem.new(:item => Item.new(:price => Money.new(2, :USD), :quantity => 3)))
    expect(order.total).to eq(Money.new(15.99, :USD))
    pp order.entries
  end

end
