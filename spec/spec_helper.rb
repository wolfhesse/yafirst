require('rspec')

                                         # spec/awesome_gem/awesome.rb
APP_ROOT = File.expand_path(File.join(File.dirname(__FILE__), '..'))
$: << File.join(APP_ROOT, 'lib/yafirst') # so rspec knows where your file could be
$: << File.join(APP_ROOT, 'lib/yafirst/Petshop')
$: << File.join(APP_ROOT, 'lib/yafirst/Warenwirtschaft')
$: << File.join(APP_ROOT, 'lib/yafirst/SysArch')
