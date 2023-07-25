require 'rails_helper'

RSpec.describe "UserActivities", type: :request do
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
      let(:activity) {Activity.create(
        category: 'soccer',
        activity: '2v2 pick up game',
        activity_photo: 'https://publicdomainvectors.org/photos/1292286629.png',
        start_time: '10am',
        duration: 2,
        location: 'IB',
        description: 'bring your own soccer ball',
        creator_id: user.id
      )
    }
    describe "GET /index" do
      it 'should list activity' do
      UserActivity.create!(
      activity_id: activity.id,
      user_id: user.id
      )
      get '/user_activities'
      user_activity = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(user_activity.length).to eq 1
      end
    end

    describe "POST /create" do
      it "creates an activity" do
        user_activity_params = {
          user_activity: {
            activity_id: activity.id,
            user_id: user.id
          }
        }
        post '/user_activities', params: user_activity_params
        user_activity = UserActivity.all
        expect(response).to have_http_status(200)
        expect(user_activity.length).to eq 1
      end
    end

    describe "DELETE /destroy" do
      it "deletes an activity" do
        UserActivity.create(
          activity_id: activity.id,
          user_id: user.id
        )
        user_activity = UserActivity.first
        delete "/user_activities/#{user_activity.id}"
        user_activities = UserActivity.all
        expect(response).to have_http_status(200)
        expect(user_activities.length). to eq 0
      end 
    end 
  end
