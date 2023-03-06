class Store < ActiveRecord::Base
  has_many :employees

  validates :name, length: { minimum: 3, allow_nil: false }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  before_destroy do
    if self.employees.size > 0
      self.errors.add(:base, "Can't be destroy because of something")
      throw :abort
    end
  end

end
