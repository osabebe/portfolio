class AddColumnProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :language, :string
  end
end
