class CreateTops < ActiveRecord::Migration[6.0]
  def change
    create_table :tops do |t|
      t.string :news
      t.string :introduction
      t.timestamps
    end
  end
end
