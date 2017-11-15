feature "Creating Links" do
  scenario 'form submit creates new link' do
    visit '/links/new'
    fill_in('Title', :with => 'Makers')
    fill_in('URL', :with => 'https://www.makersacademy.com')
    click_button 'Submit'
    expect(page).to have_content "Title: Makers URL: https://www.makersacademy.com"
  end
end

feature "Adding tags" do
  scenario 'adds single tag to a link' do
    visit '/links/new'
    fill_in('Title', :with => 'Makers')
    fill_in('URL', :with => 'https://www.makersacademy.com')
    fill_in('Tag', :with => 'spirituality / cults ')
    click_button 'Submit'
    expect(page).to have_content "Title: Makers URL: https://www.makersacademy.com Tag: spirituality / cults "
  end
end
