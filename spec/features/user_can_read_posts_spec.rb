# As a User
# I want to read blog posts about company
# So that, I can know all important things within company
feature 'UserCanReadPosts' do
  subject(:user){ FactoryBot.create(:user) }

  # When I sign in
  # Then I see a list of posts
  scenario 'user sees a list of posts' do
    FactoryBot.create_list(:post, 10)
    login_as(user)
    visit '/'

    expect(page).to have_content('Posts')
    expect(page).to have_css('.post', count: 10)
  end
end
