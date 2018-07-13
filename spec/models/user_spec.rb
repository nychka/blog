describe User do
  it 'builds with role user' do
    user = FactoryBot.build(:user)

    expect(user.admin?).to be false
  end

  it 'builds with role admin' do
    user = FactoryBot.build(:admin)

    expect(user.admin?).to be true
  end
end
