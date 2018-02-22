class Test < ApplicationRecord
  belongs_to :category
  belongs_to :author, class_name: 'User', foreign_key: 'user_id'
  has_many :questions
  has_many :taken_tests
  has_many :users, through: :taken_tests

  def self.select_by_category(category_title)
    self.
      joins('JOIN categories ON tests.category_id = categories.id').
      where('categories.title = ?', category_title).
      order('tests.title DESC').
      pluck(:title)
  end
end
