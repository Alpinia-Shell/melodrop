class CreateNotifications < ActiveRecord::Migration[6.1]
  def change
    create_table :notifications do |t|
      t.references :user, null: false, foreign_key: true
      t.references :post, null: false, foreign_key: true
      t.references :favorite, null: false, foreign_key: true
      t.boolean :read, null: false, default: false
      t.timestamps
    end
  end
end
