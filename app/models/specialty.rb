class Specialty < ActiveRecord::Base
  belongs_to :users
  belongs_to :items
  attr_accessible :item_id, :user_id
end
