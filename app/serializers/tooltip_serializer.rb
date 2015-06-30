class TooltipSerializer < ActiveModel::Serializer
  attributes :id, :term, :definition, :updated_by, :updated_at
end
