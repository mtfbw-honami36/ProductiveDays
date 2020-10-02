class Schedule < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :countdown
  
  validates :name, :start_time, :countdown, presence: true
end
