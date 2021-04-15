class CreateStocks < ActiveRecord::Migration[6.0]
  def change
    create_table :stocks do |t|
      t.belongs_to :user
      t.string :ticker
      t.string :company
      t.timestamps
    end
  end
end
