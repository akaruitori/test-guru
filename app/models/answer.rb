class Answer < ApplicationRecord
  belongs_to :question

  validates :body, presence: true
  validate :validate_number_of_answers

  scope :correct_ones, -> { where(correct: true) }

  private

  def validate_number_of_answers
    if question.answers.size >= 4
      errors.add(:question, "can't have more than 4 answers")
    end
  end
end
