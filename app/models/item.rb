class Item < ActiveRecord::Base
  has_many :specialties
  attr_accessible :description, :importance, :name


  def busFactor
  	@busFactor = self.specialties.count;
  end

end
