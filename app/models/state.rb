class State < ActiveRecord::Base
  has_many :state_tooltips
  has_many :tooltips, :through => :state_tooltips
end
