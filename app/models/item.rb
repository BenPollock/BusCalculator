class Item < ActiveRecord::Base
  has_many :specialties
  attr_accessible :description, :importance, :name


  def busFactor
  	@busFactor = self.specialties.count
  end

  def specialty?(user)
    @specialties = Specialty.where("item_id = ? AND user_id = ?", self.id, user).count
  end

  def specializers
  	@specialties = self.specialties
  	@users = []

  	@specialties.each do |record|
  		user = User.find(record.user_id)
  		@users << user
  	end
  	return @users
  end

end
