class Store < ActiveRecord::Base
  has_many :employees

  validates :name, length: { minimum: 3, allow_nil: false }
  validates :annual_revenue, numericality: { only_integer: true, greater_than: 0 }

end
