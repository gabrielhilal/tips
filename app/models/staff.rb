class Staff < ActiveRecord::Base
  attr_accessible :hours, :name, :total

  validates :name,  presence: true
  validates :hours, presence: true

  def self.total
    Staff.pluck(:hours).sum
  end

end
