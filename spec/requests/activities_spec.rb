require 'rails_helper'

# category: 'soccer',
# activity: '2v2 pick up game',
# activity_photo: 'https://publicdomainvectors.org/photos/1292286629.png',
# start_time: '10am',
# duration: 2,
# location: 'IB',
# description: 'bring your own soccer ball'

RSpec.describe "Activities", type: :request do
  let(:user) { User.create(
    email: 'test@example.com',
    password: 'password',
    password_confirmation: 'password'
    )
  }

  describe "GET /index" do
    it 'should validate category' do
    activity = user.activities.create(
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
    p "this is from activity_spec: #{activity}"
    expect(response).to have_http_status(200)
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
          user_id: user.id
        }
      }
      post '/activity', params: activity_params
      activity = Activity.first
      expect(response).to have_http_status(200)
      expect(activity.category).to eq 'soccer'
    end
  end

  describe "PATCH /update" do
    it "updates an activity" do
      user.activities.create(
          category: 'soccer',
          activity: '2v2 pick up game',
          activity_photo: 'https://publicdomainvectors.org/photos/1292286629.png',
          start_time: '10am',
          duration: 2,
          location: 'IB',
          description: 'bring your own soccer ball',
          user_id: user.id
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
          user_id: user.id
        }
      }
      activity = Activity.first
      patch "/activities/#{activity.id}", params: activity_params
      updated_activity = Activity.first
      expect(response).to have_http_status(200)
      expect(updated_activity.duration).to eq 4
    end
  end
end
