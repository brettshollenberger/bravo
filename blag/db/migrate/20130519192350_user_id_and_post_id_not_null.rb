class UserIdAndPostIdNotNull < ActiveRecord::Migration
  def up
    change_column :comments, :user_id, :integer, :null => false
    change_column :comments, :post_id, :integer, :null => false
  end

  def down
    change_column :comments, :user_id, :integer, :null => true
    change_column :comments, :post_id, :integer, :null => true
  end
end