require 'rspec'
require 'selenium-webdriver'
require 'cucumber'
require 'byebug'

include RSpec::Matchers

require File.dirname(__FILE__) + "/../helpers/utilities"
include API