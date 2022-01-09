class Store < ActiveRecord::Base
  has_many :employees

  validates_length_of_name :name { minimum: 3 }
  validates_numericality_of :annual_revenue { only_integer: true }
end

#   * Stores must always have a name that is a minimum of 3 characters
#   * Stores have an annual_revenue that is a number (integer) that must be 0 or more
