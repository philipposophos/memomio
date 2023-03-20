class Tag < ApplicationRecord
  belongs_to :emotional_tag
  belongs_to :memory
end
