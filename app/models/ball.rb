class Ball < ApplicationRecord
  belongs_to :user
  has_many :answers, dependent: :destroy

  validates :name, presence: true, uniqueness: true
end
