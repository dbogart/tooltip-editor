class TooltipSerializer < ActiveModel::Serializer
  attributes :id, :term, :definition, :updated_by, :updated_at

  has_many :states
end
