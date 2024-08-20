# limpar o db
puts 'cleaning db...'
Pet.destroy_all
puts 'db cleaned!'

puts 'creating pets...'
Pet.create!(name: 'Snoopy', address: 'Mourato Coelho', found_on: Date.current, species: 'dog')
Pet.create!(name: 'Garfield', address: 'Mourato Coelho', found_on: 3.days.ago, species: 'cat')
Pet.create!(name: 'Mourato', address: 'Mourato Coelho', found_on: 10.days.ago, species: 'rabbit')
Pet.create!(name: 'Pernalonga', address: 'Mourato Coelho', found_on: 1.days.ago, species: 'rabbit')
Pet.create!(name: 'Draco', address: 'Mourato Coelho', found_on: 4.days.ago, species: 'snake')
Pet.create!(name: 'Leonardo', address: 'Mourato Coelho', found_on: 2.days.ago, species: 'turtle')
puts "created #{Pet.count} pets"

puts 'goodbye!'
