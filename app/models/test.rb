class Test < ApplicationRecord
  belongs_to :category
  belongs_to :author, class_name: 'User', foreign_key: 'user_id'
  has_many :questions
  has_many :taken_tests
  has_many :users, through: :taken_tests

  validates :title, presence: true,
                    uniqueness: {scope: :level,
                               message: 'with this level already exists'}
  validates :level, numericality: {only_integer: true,
                                   greater_than_or_equal_to: 0}

  scope :easy, -> { where(level: 0..1) }
  scope :medium, -> { where(level: 2..4) }
  scope :hard, -> { where(level: 5..Float::INFINITY) }

  scope :by_category, -> (category_title) do
      joins(:category).
      where(categories: {title: category_title}).
      order(title: :desc)
    end

  scope :by_level, -> (level) { where(level: level) }

  def self.title_by_category(category_title)
    self.by_category.pluck(:title)
  end
end
