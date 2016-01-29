require('spec_helper')

#                                         # spec/awesome_gem/awesome.rb
#APP_ROOT = File.expand_path(File.join(File.dirname(__FILE__), '..', '..'))
#$: << File.join(APP_ROOT, 'lib/yafirst') # so rspec knows where your file could be
#$: << File.join(APP_ROOT, 'lib/yafirst/SysArch')

# require 'index_adapter'                  # this loads the class you want to test

# include Yafirst
include Yafirst::SysArch


describe IndexAdapter do
  before do
    Yafirst.logger.level = Logger::INFO
    @ya_index = IndexAdapter.new(config: 'woofer!')
  end

  it 'should have a configured logger' do
    Yafirst.logger.should_not be nil
  end

  it 'should have a config' do
    @ya_index.config.should include 'woofer!'
  end

  context '#filters' do
    it 'should memorize filters' do
      @ya_index.add_filter(topic: :eins)
      @ya_index.add_filter(topic: :zwo )
      @ya_index.add_filter({"0"=>:nein})
      @ya_index.add_filter({"1"=>:nein})
      @ya_index.filters.should include topic: :zwo
      @ya_index.filters.should include topic: :eins
      @ya_index.filters.should_not include :nothere
      @ya_index.filters.select{|x| x[:topic]== :eins}.count.should be 1
      @ya_index.filters.collect{|x| x.values_at(:topic)}.flatten.reject{|x|x.nil?}.count.should be 2
      @ya_index.topics.count.should be 2

    end
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
