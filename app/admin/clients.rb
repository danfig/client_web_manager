
ActiveAdmin.register Client do

	index do
	    column("Name") { |client| link_to client.name, admin_client_path(client) }
	    column :primary_contact
	    column :telephone	
	    column :email
	    #column :price, :sortable => :price do |product|
	      #div :class => "price" do
	        #number_to_currency product.price
	      #end
	    #end
	    default_actions
	end




	show :title => :name do

	  panel "Websites" do
	    table_for client.websites do |t|
	      t.column("Title") { |website| link_to website.name, admin_website_path(website) }
	      t.column("URL"){|website| website.url}
	    end
	  end
	end

	sidebar "Client Details", :only => :show do
	    	attributes_table_for client, :name, :primary_contact, :telephone, :email
	end
  
end
