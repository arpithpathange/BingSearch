require 'watir-webdriver'
require 'rake'

require 'headless'
headless = Headless.new
headless.start

browser = Watir::Browser.new:firefox



Before do
  @browser = browser
end

at_exit do
  browser.close
end
