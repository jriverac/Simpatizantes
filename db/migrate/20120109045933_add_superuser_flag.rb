class AddSuperuserFlag < ActiveRecord::Migration
  def up
    add_column :users, :super, :boolean
  end
  
  def down
    remove_column :users, :super
  end
end
