class Activity < ApplicationRecord
    belongs_to :user
    validates :category, :activity, :activity_photo, :start_time, :duration, :location, :description, presence: true
end
