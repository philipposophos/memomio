class EmotionalTag < ApplicationRecord
  has_many :tags, dependent: :destroy

  validates :emotion, inclusion: { in: %w[trigger bad okay good] }
end
