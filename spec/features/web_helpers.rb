def create_link
  Link.create(url: 'https://www.google.com', title: 'Google')
  visit '/links'
end
