require('rspec')

                                         # spec/awesome_gem/awesome.rb
APP_ROOT = File.expand_path(File.join(File.dirname(__FILE__), '..', '..'))
$: << File.join(APP_ROOT, 'lib/yafirst') # so rspec knows where your file could be
$: << File.join(APP_ROOT, 'lib/yafirst/SysArch')

require 'index_adapter'                  # this loads the class you want to test

include Yafirst::SysArch

describe IndexAdapter do
  before do
    @ya_index = IndexAdapter.new(config: 'woofer!')
  end
  it 'should have a config' do
    @ya_index.config.should include 'woofer!'
  end
  context '#search topics' do
    it 'should return a sample string' do
      @ya_index.add_filter(:topic => 'wien')
      @ya_index.add_filter(:topic => 'faymann', :method => :and)
      @ya_index.add_filter(:topic => 'bereich', :method => :or)
      @ya_index.search
      @ya_index.result.should include 'woofer!:'
    end
  end
  context '#search titles' do

  end
  context '#filter languages' do

  end
  context '#filter sources' do

  end
end
