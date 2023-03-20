class Memory < ApplicationRecord
  belongs_to :user

  has_many :notes, dependent: :destroy
  has_many :tags, dependent: :destroy

  validates :title, :description, presence: true
end
