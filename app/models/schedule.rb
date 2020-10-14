class Schedule < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :countdown
  belongs_to_active_hash :color
  
  belongs_to :user
  
  validates :name, :start_time, :countdown, :color, :user_id, presence: true
  validates :countdown_id, :color_id, numericality: { other_than: 1 } 
end
