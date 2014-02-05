Given /I am on the (.+)$/ do |page|
	path = case page
	  when 'homepage'
	  	'/'
	  end
	visit path
end

When /I hit "(.+)"$/ do |link|
	click_on link
end