class FixDefinitionName < ActiveRecord::Migration
  def change
    rename_column :tooltips, :definiton, :definition
  end
end
