100.times do
  Person.create(:prefix => Faker::Name.prefix,
                :first_name => Faker::Name.first_name,
                :middle_name => Faker::Name.first_name,
                :last_name => Faker::Name.last_name,
                :suffix => Faker::Name.suffix,
                :email => Faker::Internet.email,
                :phone => Faker::PhoneNumber.phone_number)
end
