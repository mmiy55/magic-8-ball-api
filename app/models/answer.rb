class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :ball

  validates :content, inclusion: { in: %w(positive negative vague),
    message: "%{value} is not a valid size" }
end
