class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.string :name_jp
      t.string :name_en
      t.string :hobby
      t.string :strong_point
      t.string :public_relations
      t.string :career
      t.string :image
      t.string :email
      t.string :github_url
      t.string :instagram_url
      t.string :language
      t.string :framework
      t.string :deploy
      t.date :birthday

      t.timestamps
    end
  end
end
