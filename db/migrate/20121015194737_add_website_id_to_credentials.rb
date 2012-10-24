class AddWebsiteIdToCredentials < ActiveRecord::Migration
  def change

  	 add_column :credentials, :website_id, :integer
  	 add_index :credentials, :website_id
  end
end
