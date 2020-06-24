class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :image
      t.string :site_url
      t.date :date

      t.timestamps
    end
  end
end
