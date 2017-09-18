# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Person.destroy_all
peoples = Person.create!(name: 'Maicon Vieira', phone: '47997236910', mail: 'maiconrodrigo.vieira@gmail.com', adrress: 'Rua: Guararapes, 562 - Floresta - Joinville/SC')
p "Criado #{Person.count} pessoa(as)."
