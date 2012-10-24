class AddClientIdToWebsite < ActiveRecord::Migration
  def change
    add_column :websites, :client_id, :integer
  end
end
