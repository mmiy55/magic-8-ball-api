class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :ball

  validates :answer_type, inclusion: { in: %w(positive negative vague),
    message: "%{value} is not a valid type(positive/negative/vague)" }
end
