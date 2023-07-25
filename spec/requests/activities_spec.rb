require 'rails_helper'
RSpec.describe "Activities", type: :request do
  let(:user) { User.create(
    email: 'test@example.com',
    password: 'password',
    password_confirmation: 'password',
    username: 'jesus19',
    name: 'Jesus',
    photo: 'https://publicdomainvectors.org/photos/1292286629.png',
    bio: 'i am cool',
    gender_identity: 'Male'
    )
  }

  describe "GET /index" do
    it 'should have a list of activities' do
    Activity.create(
      category: 'soccer',
      activity: '2v2 pick up game',
      activity_photo: 'https://publicdomainvectors.org/photos/1292286629.png',
      start_time: '10am',
      duration: 2,
      location: 'IB',
      description: 'bring your own soccer ball',
      creator_id: user.id
    )
    get '/activities'

    activity = JSON.parse(response.body)
    expect(response).to have_http_status(200)
    expect(activity[0]['category']).to eq 'soccer'
    expect(activity.length).to eq 1
    end
  end

  describe "POST /create" do
    it "creates an activity" do
      activity_params = {
        activity: {
          category: 'soccer',
          activity: '2v2 pick up game',
          activity_photo: 'https://publicdomainvectors.org/photos/1292286629.png',
          start_time: '10am',
          duration: 2,
          location: 'IB',
          description: 'bring your own soccer ball',
          creator_id: user.id
        }
      }
      post '/activities', params: activity_params
      activity = Activity.all
      expect(response).to have_http_status(200)
      expect(activity[0]['category']).to eq 'soccer'
      expect(activity.length).to eq 1
    end
  end

  describe "PATCH /update" do
    it "updates an activity" do
      Activity.create(
          category: 'soccer',
          activity: '2v2 pick up game',
          activity_photo: 'https://publicdomainvectors.org/photos/1292286629.png',
          start_time: '10am',
          duration: 2,
          location: 'IB',
          description: 'bring your own soccer ball',
          creator_id: user.id
      )
      activity_params = {
        activity: {
          category: 'soccer',
          activity: '2v2 pick up game',
          activity_photo: 'https://publicdomainvectors.org/photos/1292286629.png',
          start_time: '10am',
          duration: 4,
          location: 'IB',
          description: 'bring your own soccer ball',
          creator_id: user.id
        }
      }
      activity = Activity.first
      patch "/activities/#{activity.id}", params: activity_params
      updated_activity = Activity.first
      expect(response).to have_http_status(200)
      expect(updated_activity.duration).to eq 4
    end
  end

  describe "DELETE /destroy" do
    it "deletes an activity" do
      Activity.create(
        category: 'soccer',
        activity: '2v2 pick up game',
        activity_photo: 'https://publicdomainvectors.org/photos/1292286629.png',
        start_time: '10am',
        duration: 4,
        location: 'IB',
        description: 'bring your own soccer ball',
        creator_id: user.id
      )
      activity = Activity.first
      delete "/activities/#{activity.id}"
      activities = Activity.all
      expect(response).to have_http_status(200)
      expect(activities.length). to eq 0
    end 
  end 
end
