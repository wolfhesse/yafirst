require 'yafirst/version'

module Yafirst
  # Your code goes here...
  attr_accessor :logger
  def self.logger
    @logger
  end
  def self.version_string
    "yafirst version #{Yafirst::VERSION}"
  end
end

require 'yafirst/Petshop/module'
require 'yafirst/SysArch/module'
require 'yafirst/Warenwirtschaft/module'
