class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :detail
      t.string :site_url
      t.string :image
      t.string :production_period
      t.string :github_url
      t.timestamps
    end
  end
end
