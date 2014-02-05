Given /I am on the (.+)$/ do |page|
	path = case page
	  when 'homepage'
	  	'/'
	  when /project page for "(.+)"$/
	  	project_path(Project.find_by_name!($1))
	  end
	visit path
end

When /I hit "(.+)"$/ do |link|
	click_on link
end