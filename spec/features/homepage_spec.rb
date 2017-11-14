feature 'BookmarkManager Homepage' do

  scenario 'should contain link' do

    Link.create(url: 'https://www.google.com', title: 'Google')
    visit '/links'
    expect(page.status_code).to eq 200

    within 'ul#links' do
      expect(page).to have_content('Google')
  end
end
end
