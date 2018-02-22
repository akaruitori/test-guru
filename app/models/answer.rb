class Answer < ApplicationRecord
  belongs_to :question

  scope :correct_ones, -> { where(correct: true) }
end
