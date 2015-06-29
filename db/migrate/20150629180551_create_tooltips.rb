class CreateTooltips < ActiveRecord::Migration
  def change
    create_table :tooltips do |t|
      t.string :term
      t.text :definiton
      t.string :updated_by

      t.timestamps null: false
    end
  end
end
