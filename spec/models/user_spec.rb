require 'rails_helper'

RSpec.describe User, type: :model do
  it 'should have a username' do
    user = User.create(
      photo: 'https://publicdomainvectors.org/photos/1292286629.png',
      name: 'Jesus',
      bio: 'I am cool',
      gender_identity: 'Male',
    )
    expect(user.errors[:username]).to_not be_empty
    expect(user.errors[:username]).to include("can't be blank")
  end

  it 'should have a photo' do
    user = User.create(
      username: 'Jesus19',
      name: 'Jesus',
      bio: 'I am cool',
      gender_identity: 'Male',
    )
    expect(user.errors[:photo]).to_not be_empty
    expect(user.errors[:photo]).to include("can't be blank")
  end

  it 'should have a name' do
    user = User.create(
      username: 'Jesus19',
      photo: 'https://publicdomainvectors.org/photos/1292286629.png',
      bio: 'I am cool',
      gender_identity: 'Male',
    )
    expect(user.errors[:name]).to_not be_empty
    expect(user.errors[:name]).to include("can't be blank")
  end

  it 'should have a bio' do
    user = User.create(
      username: 'Jesus19',
      photo: 'https://publicdomainvectors.org/photos/1292286629.png',
      name: 'Jesus',
      gender_identity: 'Male',
    )
    expect(user.errors[:bio]).to_not be_empty
    expect(user.errors[:bio]).to include("can't be blank")
  end

  it 'should have a gender_identity' do
    user = User.create(
      username: 'Jesus19',
      photo: 'https://publicdomainvectors.org/photos/1292286629.png',
      name: 'Jesus',
      bio: 'I am cool',
    )
    expect(user.errors[:gender_identity]).to_not be_empty
    expect(user.errors[:gender_identity]).to include("can't be blank")
  end
end
