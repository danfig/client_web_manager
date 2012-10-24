class Credential < ActiveRecord::Base

  belongs_to :website

  attr_accessible :notes, :password, :username, :category, :url, :website_id

   rails_admin do 
		RailsAdmin.config {|c| c.label_methods << :category}

		    list do
		    	field :website
		    	field :category
		    	field :url
		    	field :username
		    	field :password
		    	field :notes

		    	exclude_fields :created_at, :updated_at, :id
		    end
  
    end

end