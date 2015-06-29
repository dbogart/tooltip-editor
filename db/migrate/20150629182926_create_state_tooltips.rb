class CreateStateTooltips < ActiveRecord::Migration
  def change
    create_table :state_tooltips do |t|
      t.integer :state_id
      t.integer :tooltip_id

      t.timestamps null: false
    end
  end
end
