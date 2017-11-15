def create_link(title, url, tag)
  visit '/links/new'
  fill_in('Title', :with => title)
  fill_in('URL', :with => url)
  fill_in('Tag', :with => tag)
  click_button 'Submit'
end

def add_tag(link, tag)
  fill_in('link', :with => link)
  fill_in('tag', :with => tag)
  click_button('Submit')
end
