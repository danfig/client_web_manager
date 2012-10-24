class Client < ActiveRecord::Base

  has_many :websites

  attr_accessible :email, :name, :primary_contact, :telephone

  rails_admin do 

		    list do
		    
		    	exclude_fields :created_at, :updated_at, :id
		    end
   end

end
