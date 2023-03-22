class Ball < ApplicationRecord
  belongs_to :user
  has_many :answers
end
