class CreateSupporters < ActiveRecord::Migration
  def change
    create_table :supporters do |t|
      t.string :first_name
      t.string :father_last_name
      t.string :mother_last_name
      t.string :email
      t.string :phone
      t.string :cellphone
      t.string :municipality
      t.string :street_address
      t.string :code
      t.string :section

      t.timestamps
    end
  end
end
