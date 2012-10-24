class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :primary_contact
      t.integer :telephone
      t.string :email

      t.timestamps
    end
  end
end
