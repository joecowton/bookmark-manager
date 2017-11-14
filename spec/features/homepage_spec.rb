feature 'BookmarkManager Homepage' do
  scenario 'should contain link' do
    create_link
    expect(page.status_code).to eq 200
    within 'ul#links' do
      expect(page).to have_content('Google')
    end
  end
end
