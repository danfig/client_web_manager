class RenameDatabaseColumn < ActiveRecord::Migration
  def up
  	rename_column :credentials, :type, :category
  end

  def down
  	rename_column :credentials, :category, :type
  end
end
