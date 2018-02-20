class Test < ApplicationRecord
  def self.select_by_category(category_title)
    self.
      joins('JOIN categories ON tests.category_id = categories.id').
      where('categories.title = ?', category_title).
      order('tests.title DESC').
      pluck(:title)
  end
end
