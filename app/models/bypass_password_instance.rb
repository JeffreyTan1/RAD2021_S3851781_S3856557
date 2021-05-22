class BypassPasswordInstance < ApplicationRecord
  validates :userId, presence: true
  validates :key, presence: true
end
