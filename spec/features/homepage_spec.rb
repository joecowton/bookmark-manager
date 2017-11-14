feature 'BookmarkManager Homepage' do
  scenario 'should contain link' do
    visit '/'
    expect(page).to have_link('google', href: 'https://www.google.com')
  end
end
