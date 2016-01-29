require 'spec_helper'


describe Yafirst do
  before do

  end
  it 'should have a configured version' do
    Yafirst::VERSION.should be_eql "0.1.1"
  end
end
