class AddClientIdToWebsites < ActiveRecord::Migration
  def change

  	add_index :websites, :client_id
  end
end
