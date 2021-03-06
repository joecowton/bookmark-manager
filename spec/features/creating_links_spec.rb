feature "Creating Links" do
  scenario 'form submit creates new link' do
    create_link('Makers', 'https://www.makersacademy.com', 'better than Jesus')
    expect(page).to have_content "Title: Makers"
    expect(page).to have_content "URL: https://www.makersacademy.com"
  end
end

feature "Adding tags" do
  scenario 'adds single tag to a link' do
    create_link('Makers', 'https://www.makersacademy.com', 'better than Jesus')
    expect(page).to have_content "better than Jesus"
  end
end

feature "Filter links by tag" do
  scenario "filter links by 'bubble' tag" do
    create_link('Pair of Bubbles', '', 'bubbles')
    create_link('Makers', '', 'better than Jesus')
    visit 'tags/bubbles'
    expect(page).to have_content 'Pair of Bubbles'
    expect(page).not_to have_content 'Makers'
  end
end

feature "Adds multiple tags" do
  scenario "adds 3 tags and checks they are present" do
    create_link('Pair of Bubbles', '', 'bubbles')
    add_tag('Pair of Bubbles','bubbles 2')
    expect(page).to have_content 'Tag bubbles 2 added to Pair of Bubbles'
    add_tag('Pair of Bubbles','less bubbles')
    expect(page).to have_content 'Tag less bubbles added to Pair of Bubbles'
  end
end
