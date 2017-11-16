feature "User area" do
  scenario 'signs up and redirects to links page' do
    sign_up('bob', 'bob@bob.bob', 'bubbles', 'bubbles')
    expect(page).to have_current_path('/links')
  end

  scenario 'links page shows welcome message with user email' do
    sign_up('bob', 'bob@bob.bob', 'bubbles', 'bubbles')
    expect(page).to have_content("Welcome bob - bob@bob.bob")
  end

  scenario 'User count increases after new sign up' do
    sign_up('bob', 'bob@bob.bob', 'bubbles', 'bubbles')
    expect(page).to have_content("1 user")
  end

  scenario 'only matched passwords creats user' do
    sign_up('bob', 'bob@bob.bob', 'bubbles', 'bibi')
    
  end
end
