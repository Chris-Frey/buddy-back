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
      user_id: user.id
    )
    get '/activities'

    activity = JSON.parse(response.body)
    p activity
    expect(response).to have_http_status(200)
    end
  end

  # describe "POST /create" do
  #   it "creates an activity" do
  #     activity_params = {
  #       activity: {
  #         category: 'soccer',
  #         activity: '2v2 pick up game',
  #         activity_photo: 'https://publicdomainvectors.org/photos/1292286629.png',
  #         start_time: '10am',
  #         duration: 2,
  #         location: 'IB',
  #         description: 'bring your own soccer ball'
  #       }
  #     }
  #     post '/activity', params: activity_params
  #     expect(response).to have_http_status(200)
  #   end
  # end
end
