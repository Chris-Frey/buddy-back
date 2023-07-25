require 'rails_helper'

RSpec.describe UserActivity, type: :model do
  let(:user) { User.create(
    email: 'test1@example.com',
    password: 'password',
    password_confirmation: 'password'
    )
  }

  it 'should have a activity_id' do
    user_activity = UserActivity.create(
     user_id: user.id
    )
    expect(user_activity.errors[:activity_id]).to_not be_empty
    expect(user_activity.errors[:activity_id]).to include("can't be blank")
  end

  it 'should have a user_id' do
    user_activity = UserActivity.create(
      activity_id: 1
    )
    expect(user_activity.errors[:user_id]).to_not be_empty
    expect(user_activity.errors[:user_id]).to include("can't be blank")
  end
end
