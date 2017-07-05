task :clear_db => :environment do 
	User.delete_all
	Contact.delete_all
	Log.delete_all
end