class ChangeNotificationsToPolymorphic < ActiveRecord::Migration[6.1]
  def change
    remove_reference :notifications, :post, foreign_key: true
    remove_reference :notifications, :favorite, foreign_key: true
    add_reference :notifications, :notifiable, polymorphic: true, null: false
  end
end
