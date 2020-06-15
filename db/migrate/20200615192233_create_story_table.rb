class CreateStoryTable < ActiveRecord::Migration[5.2]
  def change
    create_table :story do |t|
      t.string :text
      t.string :option_1
      t.string :option_2
      t.string :option_3
      t.integer :option_1_link_id
      t.integer :option_2_link_id
    end
  end
end
