class Property < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :frequency

  with_options presence: true do
    validates :image
    validates :name
    validates :info
    validates :storage
  end

  validates :frequency_id, numericality: { message: "can't be blank" }
end
