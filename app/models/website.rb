class Website < ActiveRecord::Base

  belongs_to :client
  has_many :credentials, :dependent => :destroy
  attr_accessible :name, :url, :client_id, :credential_ids
  #accepts_nested_attributes_for :credential, :allow_destroy => true

  rails_admin do 

		    list do
		    	exclude_fields :created_at, :updated_at, :id
		    end
   end



end
