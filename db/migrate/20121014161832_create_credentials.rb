class CreateCredentials < ActiveRecord::Migration
  def change
    create_table :credentials do |t|
      t.string :type
      t.string :url
      t.string :password
      t.text :notes

      t.timestamps
    end
  end
end
