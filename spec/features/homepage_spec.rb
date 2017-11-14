feature 'BookmarkManager Homepage' do
  scenario 'should contain link' do
    visit '/'
    expect(page).to have_link(nil, href: 'http://google.com')
  end
end
