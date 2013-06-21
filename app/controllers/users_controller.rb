class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
  	@users = User.all
  end

  def show
  	@user = User.find(params[:id])

  	#Get the specialty links
  	@specialties = Specialty.where("user_id = ?", params[:id])

  	#Get the items linking to the specialty
  	@items = []
  	@specialties.each do |specialty|
  		item =Item.find(specialty.item_id)
  		@items << item
  	end
  end

  def add!(item)
      Specialty.new(:user_id => current_user.id, :item_id => params[:id])
  end

end
