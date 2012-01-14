class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :supporter_id
      t.string :contact_type
      t.text :content

      t.timestamps
    end
  end
end
