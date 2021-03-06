feature "User area" do
  scenario 'signs up and redirects to links page' do
    sign_up('bob', 'bob@bob.bob', 'bubbles')
    expect(page).to have_current_path('/')
  end

  scenario 'links page shows welcome message with user email' do
    sign_up('bob', 'bob@bob.bob', 'bubbles')
    expect(page).to have_content("Welcome bob - bob@bob.bob")
  end

  scenario 'User count increases after new sign up' do
    sign_up('bob', 'bob@bob.bob', 'bubbles')
    expect(page).to have_content("1 user")
  end

  scenario 'user fills in wrong password' do
    sign_up_2('jeff', 'bob@bob.bob', 'bubbles', 'bobbles')
    expect(page).to have_content('Password and confirmation password do not match')
  end
end
