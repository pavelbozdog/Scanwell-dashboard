# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(email: 'pavel@scanwellhealth.com', password: 'scanwell')

#Create 100 fake users
100.times do
	User.create!(email: FFaker::Internet.email, password: 'scanwell')
	end

10.times do
	participant = Participant.create!(unique_id: FFaker::Guid.guid)

	3.times do
		participant.results.create!(microalbumin: 10, protein: 10)
	end

end
