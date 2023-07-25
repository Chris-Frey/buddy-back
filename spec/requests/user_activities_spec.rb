require 'rails_helper'

RSpec.describe "UserActivities", type: :request do

  describe "GET /index" do
    let(:user) { User.create(
      email: 'test1@example.com',
      password: 'password',
      password_confirmation: 'password'
      )
    }
    #   let(:user_activity) {user.activities.create(
    #     category: 'soccer',
    #     activity: '2v2 pick up game',
    #     activity_photo: 'https://publicdomainvectors.org/photos/1292286629.png',
    #     start_time: '10am',
    #     duration: 2,
    #     location: 'IB',
    #     description: 'bring your own soccer ball',
    #     user_id: user.id
    #   )
    # }
    describe "GET /index" do
      it 'should validate category' do
      user_activity = UserActivity.create(
      activity_id: 1,
      user_id: user.id
      )
      get '/user_activities'
      p user_activity
      user_activity = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      end
    end
  end
end
