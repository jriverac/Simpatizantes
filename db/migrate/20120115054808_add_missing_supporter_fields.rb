class AddMissingSupporterFields < ActiveRecord::Migration
  def up
    add_column :supporters, :type_of_card, :string
    add_column :supporters, :gender, :string
    add_column :supporters, :nickname, :string
    add_column :supporters, :between_streets, :string
    add_column :supporters, :external_number, :string
    add_column :supporters, :internal_number, :string
    add_column :supporters, :neighborhood, :string
    
    
  end
    

  def down
    remove_column :supporters, :type_of_card
    remove_column :supporters, :gender
    remove_column :supporters, :nickname
    remove_column :supporters, :between_streets
    remove_column :supporters, :external_number
    remove_column :supporters, :internal_number
    remove_column :supporters, :neighborhood
  end
end
