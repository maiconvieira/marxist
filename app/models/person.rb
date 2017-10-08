class Person < ApplicationRecord
  belongs_to :classification
  has_many :signatures
  has_many :goals
  has_many :contributions
end
