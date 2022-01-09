class Employee < ActiveRecord::Base
  belongs_to :store

  validates_presence_of :first_name, presence: true
  validates_numericality_of :hourly_rate, { only_integer: true, minimum: 40, maximum: 200}
  validates_presence_of :store_id, presence: true
end

#   * Employees must always have a first name present
#   * Employees must always have a last name present
#   * Employees have a hourly_rate that is a number (integer) between 40 and 200
#   * Employees must always have a store that they belong to (can't have an employee that is not assigned a store)


