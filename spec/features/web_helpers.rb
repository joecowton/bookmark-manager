def create_link(title, url, tag)
  visit '/links/new'
  fill_in('Title', :with => title)
  fill_in('URL', :with => url)
  fill_in('Tag', :with => tag)
  click_button 'Submit'
end

def add_tag(link, tag)
  visit 'links/add_tag'
  fill_in('Link', :with => link)
  fill_in('Tag', :with => tag)
  click_button('Submit')
end

def sign_up(user, email, password)
  visit '/'
  fill_in('Name', :with => user)
  fill_in('Email', :with => email)
  fill_in('Password', :with => password)
  click_button('Submit')
end
