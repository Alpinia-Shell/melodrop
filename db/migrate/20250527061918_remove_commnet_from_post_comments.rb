class RemoveCommnetFromPostComments < ActiveRecord::Migration[6.1]
  def change
    remove_column :post_comments, :commnet, :text
  end
end
