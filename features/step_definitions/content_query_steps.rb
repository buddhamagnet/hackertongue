Then /^I should see "(.+)"$/ do |content|
  page.should have_content(content)
end

Then /^I should be informed of the top language within "(.+)"$/ do |element|
  page.should have_content(element, Hacker.most_popular)
end

Then /I should render "(.+)" within "(.+)"$/ do |content, element|
  page.should have_css(element, :text == content)
end

Then /I should not see "(.+)"$/ do |content|
  page.should_not have_content(content)
end

Then /the page title should be "(.+)"$/ do |title|
	page.has_title? title
end