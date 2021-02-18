class CreateDrinks < ActiveRecord::Migration[6.1]
  def change
    create_table :drinks do |t|
      t.references :user, null: false, foreign_key: true
      t.references :order, null: false, foreign_key: true
      t.string :name
      t.integer :sugar_amt
      t.integer :ice_amt
      t.boolean :boba, :default => false
      t.boolean :jelly, :default => false
      t.boolean :smallsize, :default => false
      t.boolean :largesize, :default => false

      t.timestamps
    end
  end
end
