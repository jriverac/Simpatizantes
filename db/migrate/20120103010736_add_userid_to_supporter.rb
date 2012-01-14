class AddUseridToSupporter < ActiveRecord::Migration
  def up
    add_column :supporters, :user_id, :integer  
  end
  
  def down
    remove_column :supporters, :user_id
  end
end
