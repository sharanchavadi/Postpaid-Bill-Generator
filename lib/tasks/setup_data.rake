task :setup_data => :environment do 
	user1 = User.create(email: "arvind@gmail.com", password: "secret123")
	user2 = User.create(email: "supriya@gmail.com", password: "secret123")
	250.times do 
		Contact.create(number: Faker::PhoneNumber.cell_phone, user_id: user1.id, contact_type: ["std", "local"].sample)
		Contact.create(number: Faker::PhoneNumber.cell_phone, user_id: user2.id, contact_type: ["std", "local"].sample)
	end

	1000.times do 
		user1 = User.first
		user2 = User.second
		cost = 0.50 # cost per call
		log = Log.new 
		log.user_id = user1.id 
		log.contact_id = user1.contacts.sample.id
		log.call_date = Faker::Date.between(Date.parse("2017-06-01"), Date.parse("2017-06-30"))
		minutes = Random.rand(0..59)
		seconds = Random.rand(1..59)
		log.amount = ((minutes * 60) + seconds ) / 60 * cost
		minutes = minutes < 10 ? "0#{minutes}" : minutes 
		seconds = seconds < 10 ? "0#{seconds}" : seconds
		log.duration = "#{minutes}:#{seconds}"
		log.save
	end
end