class CreateUserTable < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :role_id
      t.integer :story_id
    end
  end
end
