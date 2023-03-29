# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Produto.create(:produto, nome: "Arroz", quantidade: 10, valor: 6)
Produto.create(:produto, nome: "Feijão", quantidade: 8, valor: 10)

