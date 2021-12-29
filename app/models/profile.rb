class Profile < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :position
  belongs_to :depertment
  belongs_to :division
  belongs_to :license

  validates :image,        presence: true
  validates :name,         presence: true, length: { maximum: 30 }
  validates :consept,      presence: true, length: { maximum: 1000 }

  validates :position_id,    presence: true, numericality: { other_than: 1, message: "can't be blank" }
  validates :depertment_id,  presence: true, numericality: { other_than: 1, message: "can't be blank" }
  validates :division_id,    presence: true, numericality: { other_than: 1, message: "can't be blank" }
  validates :license_id,     presence: true, numericality: { other_than: 1, message: "can't be blank" }
end
