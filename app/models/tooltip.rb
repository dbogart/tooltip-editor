class Tooltip < ActiveRecord::Base
  has_many :state_tooltips
  has_many :states, :through => :state_tooltips
end
