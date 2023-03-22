class Memory < ApplicationRecord
  belongs_to :user

  has_many :notes, dependent: :destroy
  has_many :tags, dependent: :destroy

  validates :title, :description, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_title_and_description,
  against: [ :title, :description ],
  using: { tsearch: { prefix: true } }
end
