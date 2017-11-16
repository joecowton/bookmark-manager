def create_link(title, url, tag)
  sign_up('bob', 'bob@bob.bob', 'bubbles')
  visit '/links/new'
  fill_in('Title', :with => title)
  fill_in('URL', :with => url)
  fill_in('Tag', :with => tag)
  click_button 'Submit'
end

def add_tag(link, tag)
  sign_up('bob', 'bob@bob.bob', 'bubbles')
  visit 'links/add_tag'
  fill_in('Link', :with => link)
  fill_in('Tag', :with => tag)
  click_button('Submit')
end

def sign_up(user, email, password, confirme)
  visit '/'
  fill_in('Name', :with => user)
  fill_in('Email', :with => email)
  fill_in('Password', :with => password)
  fill_in('Confirm_Password', :with => confirme)
  click_button('Submit')
end
