class Item < ActiveRecord::Base
  attr_accessible :description, :importance, :name
end
