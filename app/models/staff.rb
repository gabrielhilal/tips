class Staff < ActiveRecord::Base
  attr_accessible :hours, :name, :total, :start, :finish
  attr_accessor :start, :finish
  before_save :set_hours

  validates :name,  presence: true

  def self.total
    Staff.pluck(:hours).sum
  end

  def set_hours
    self.hours = finish.to_f - start.to_f unless hours
  end

end
