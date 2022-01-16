class Property < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :frequency

  validates :frequency_id, numericality: { message: "can't be blank" }
end
