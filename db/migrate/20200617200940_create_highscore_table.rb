class CreateHighscoreTable < ActiveRecord::Migration[5.2]
  def change
    create_table :highscores do |t|
      t.string :name
      t.integer :points
    end
  end
end
