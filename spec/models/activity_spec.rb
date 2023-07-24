require 'rails_helper'

RSpec.describe Activity, type: :model do
  let(:user) { User.create(
    email: 'test1@example.com',
    password: 'password',
    password_confirmation: 'password'
    )
  }

    it 'should have a category' do
    activity = user.activities.create(
      activity: '2v2 pick up game',
      activity_photo: 'https://publicdomainvectors.org/photos/1292286629.png',
      start_time: '10am',
      duration: 2,
      location: 'IB',
      description: 'bring your own soccer ball'
    )

    expect(activity.errors[:category]).to_not be_empty
    expect(activity.errors[:category]).to include("can't be blank")
  end

  it 'should have activity' do
    activity = user.activities.create(
      category: 'soccer'
      activity_photo: 'https://publicdomainvectors.org/photos/1292286629.png',
      start_time: '10am',
      duration: 2,
      location: 'IB',
      description: 'bring your own soccer ball'
    )

    expect(activity.errors[:activity]).to_not be_empty
    expect(activity.errors[:activity]).to include("can't be blank")
  end

  it 'should have activity_photo' do
    activity = user.activities.create(
      category: 'soccer'
      activity: '2v2 pick up game',
      start_time: '10am',
      duration: 2,
      location: 'IB',
      description: 'bring your own soccer ball'
    )

    expect(activity.errors[:activity_photo]).to_not be_empty
    expect(activity.errors[:activity_photo]).to include("can't be blank")
  end

  it 'should have a start_time' do
    activity = user.activities.create(
      category: 'soccer'
      activity: '2v2 pick up game',
      activity_photo: 'https://publicdomainvectors.org/photos/1292286629.png',
      duration: 2,
      location: 'IB',
      description: 'bring your own soccer ball'
    )

    expect(activity.errors[:start_time]).to_not be_empty
    expect(activity.errors[:start_time]).to include("can't be blank")
  end

  it 'should have a duartion' do
    activity = user.activities.create(
      category: 'soccer'
      activity: '2v2 pick up game',
      activity_photo: 'https://publicdomainvectors.org/photos/1292286629.png',
      start_time: '10am',
      location: 'IB',
      description: 'bring your own soccer ball'
    )

    expect(activity.errors[:duration]).to_not be_empty
    expect(activity.errors[:duration]).to include("can't be blank")
  end

  it 'should have a location' do
    activity = user.activities.create(
      category: 'soccer'
      activity: '2v2 pick up game',
      activity_photo: 'https://publicdomainvectors.org/photos/1292286629.png',
      start_time: '10am',
      duration: 2,
      description: 'bring your own soccer ball'
    )

    expect(activity.errors[:location]).to_not be_empty
    expect(activity.errors[:location]).to include("can't be blank")
  end

  it 'should have a description' do
    activity = user.activities.create(
      category: 'soccer'
      activity: '2v2 pick up game',
      activity_photo: 'https://publicdomainvectors.org/photos/1292286629.png',
      start_time: '10am',
      duration: 2,
      location: 'IB',
    )

    expect(activity.errors[:description]).to_not be_empty
    expect(activity.errors[:description]).to include("can't be blank")
  end
end
