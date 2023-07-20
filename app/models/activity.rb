class Activity < ApplicationRecord
    has_many :users, through: :user_activities
    has_many :user_activities
    belongs_to :creator, class_name: 'User', foreign_key: 'user_id'
end
