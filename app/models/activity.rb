class Activity < ApplicationRecord
    has_many :users, through: :user_activities
    has_many :user_activities
    belongs_to :creator, class_name: 'User', foreign_key: 'creator_id'
    validates :activity, :start_time, :duration, :location, :description, :category, :activity_photo, presence: true
end
