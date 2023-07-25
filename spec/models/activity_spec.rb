require 'rails_helper'

RSpec.describe Activity, type: :model do
  let(:user) { User.create(
    email: 'test1@example.com',
    password: 'password',
    password_confirmation: 'password',
    username: 'jesus19',
    name: 'Jesus',
    photo: 'https://publicdomainvectors.org/photos/1292286629.png',
    bio: 'i am cool',
    gender_identity: 'Male'
    )
  }
    it 'should have a category' do
    activity = Activity.create(
      activity: '2v2 pick up game',
      activity_photo: 'https://publicdomainvectors.org/photos/1292286629.png',
      start_time: '10am',
      duration: 2,
      location: 'IB',
      description: 'bring your own soccer ball',
      creator_id: user.id
    )
    expect(activity.errors[:category]).to_not be_empty
    expect(activity.errors[:category]).to include("can't be blank")
  end

  it 'should have activity' do
    activity = Activity.create(
      category: 'soccer',
      activity_photo: 'https://publicdomainvectors.org/photos/1292286629.png',
      start_time: '10am',
      duration: 2,
      location: 'IB',
      description: 'bring your own soccer ball',
      creator_id: user.id
    )
    expect(activity.errors[:activity]).to_not be_empty
    expect(activity.errors[:activity]).to include("can't be blank")
  end

  it 'should have activity_photo' do
    activity = Activity.create(
      category: 'soccer',
      activity: '2v2 pick up game',
      start_time: '10am',
      duration: 2,
      location: 'IB',
      description: 'bring your own soccer ball',
      creator_id: user.id
    )
    expect(activity.errors[:activity_photo]).to_not be_empty
    expect(activity.errors[:activity_photo]).to include("can't be blank")
  end

  it 'should have a start_time' do
    activity = Activity.create(
      category: 'soccer',
      activity: '2v2 pick up game',
      activity_photo: 'https://publicdomainvectors.org/photos/1292286629.png',
      duration: 2,
      location: 'IB',
      description: 'bring your own soccer ball',
      creator_id: user.id
    )
    expect(activity.errors[:start_time]).to_not be_empty
    expect(activity.errors[:start_time]).to include("can't be blank")
  end

  it 'should have a duration' do
    activity = Activity.create(
      category: 'soccer',
      activity: '2v2 pick up game',
      activity_photo: 'https://publicdomainvectors.org/photos/1292286629.png',
      start_time: '10am',
      location: 'IB',
      description: 'bring your own soccer ball',
      creator_id: user.id
    )
    expect(activity.errors[:duration]).to_not be_empty
    expect(activity.errors[:duration]).to include("can't be blank")
  end

  it 'should have a location' do
    activity = Activity.create(
      category: 'soccer',
      activity: '2v2 pick up game',
      activity_photo: 'https://publicdomainvectors.org/photos/1292286629.png',
      start_time: '10am',
      duration: 2,
      description: 'bring your own soccer ball',
      creator_id: user.id
    )
    expect(activity.errors[:location]).to_not be_empty
    expect(activity.errors[:location]).to include("can't be blank")
  end

  it 'should have a description' do
    activity = Activity.create(
      category: 'soccer',
      activity: '2v2 pick up game',
      activity_photo: 'https://publicdomainvectors.org/photos/1292286629.png',
      start_time: '10am',
      duration: 2,
      location: 'IB',
      creator_id: user.id
    )
    expect(activity.errors[:description]).to_not be_empty
    expect(activity.errors[:description]).to include("can't be blank")
  end
end
