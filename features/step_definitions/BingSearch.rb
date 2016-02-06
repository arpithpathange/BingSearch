Given /^that I have gone to the Bing page$/ do
  @browser.goto('www.bing.com')
end

When /^I add "(.*)" to the search box$/ do |item|
  @browser.text_field(:name, 'q').set(item)
end

And /^click the Search Button$/ do
  @browser.button(:name, 'go').click
end

Then /"(.*)" should be mentioned in the results/ do |text|
  @browser.text.should =~ /#{text}/
end
