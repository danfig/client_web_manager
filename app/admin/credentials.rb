ActiveAdmin.register Credential do

	index do
	    
	    column :website
	    column("Category") { |credential| link_to credential.category, admin_credential_path(credential) }
	    column :url
	    column :username	
	    column :password
	    column :notes
	    #column :price, :sortable => :price do |product|
	      #div :class => "price" do
	        #number_to_currency product.price
	      #end
	    #end
	    default_actions
	end

	show :title => :category  do


	    attributes_table :category, :url, :username, :password, :notes
	end

	#sidebar "Other Credentials For This Website", :only => :show do
		  #table_for website.credentials.where(:website_id => credential.website) do |t|
		    #t.column("Category") { |credential| link_to credential.category, admin_credential_path(credential) }
		  #end
	#end



  
end
