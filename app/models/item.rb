class Item < ActiveRecord::Base
  has_many :specialties
  attr_accessible :description, :importance, :name


  def busFactor
  	@busFactor = self.specialties.count;
  end

  def specialty?(user)
    @specialties = Specialty.where("item_id = ? AND user_id = ?", self.id, user).count
  end

end
