ActiveAdmin.register Website do

	index do
	    column("Name") { |website| link_to website.name, admin_website_path(website) }
	    column :url
	    column :client
	    #column :price, :sortable => :price do |product|
	      #div :class => "price" do
	        #number_to_currency product.price
	      #end
	    #end
	    default_actions
	end




	show :title => :name do

	  panel "Credentials" do
	    table_for website.credentials do |t|
	      t.column("Category") { |credential| credential.category }
	      t.column("URL") { |credential| credential.url }
	      t.column("Username") { |credential| credential.username }
	      t.column("Password") { |credential| credential.password }
	      
	    end

	  end
	end

	sidebar "Websites Details", :only => :show do
	    	attributes_table_for website, :name, :url
	end
  
  
end
