require('rspec')

                                         # spec/awesome_gem/awesome.rb
APP_ROOT = File.expand_path(File.join(File.dirname(__FILE__), '..', '..'))
$: << File.join(APP_ROOT, 'lib/Yafirst') # so rspec knows where your file could be
require 'eins'                           # this loads the class you want to test
require 'order'
require 'line_item'
require 'item'
require 'money'

include Yafirst

describe Yafirst::Eins do
  before do
    @dog = Yafirst::Eins.new(name: 'woofer!')
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
describe Yafirst::Order do

  it "sums the prices of its line items" do
    order = Yafirst::Order.new
    order.add_entry(LineItem.new(:item => Item.new(
        :price => Money.new(1.11, :USD)
    )))
    order.add_entry(LineItem.new(:item => Item.new(
        :price    => Money.new(2.22, :USD),
        :quantity => 2
    )))
    #expect(order.total).to eq(Money.new(5.55, :USD))


    expect(order.total).to eq(Money.new(5.55, :USD))

    order.add_entry(LineItem.new(:item => Item.new(:price => Money.new(2, :USD), :quantity => 4)))
    expect(order.total).to eq(Money.new(13.55, :USD))
    pp order.entries
  end
end
