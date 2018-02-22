class Test < ApplicationRecord
  belongs_to :category
  belongs_to :author, class_name: 'User', foreign_key: 'user_id'
  has_many :questions
  has_many :taken_tests
  has_many :users, through: :taken_tests

  scope :easy, -> { where(level: 0..1) }
  scope :medium, -> { where(level: 2..4) }
  scope :hard, -> { where(level: 5..Float::INFINITY) }

  def self.select_by_category(category_title)
    self.
      joins('JOIN categories ON tests.category_id = categories.id').
      where('categories.title = ?', category_title).
      order('tests.title DESC').
      pluck(:title)
  end
end
