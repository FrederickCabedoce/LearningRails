# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'pokemon.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
pokemonId = 0
csv.each do |row|
    puts "Attempting insert of: #{row['Entry']} with name: #{row['Name']}"
    pokemon = Pokemon.create(
        id: pokemonId,
        entry: row['Entry'],
        name: row['Name'],
        firstType: row['Type 1'],
        secondType: row['Type 2'],
        total: row['Total'],
        hp: row['HP'],
        attack: row['Attack'],
        defense: row['Defense'],
        specialAttack: row['Sp. Atk'],
        specialDefense: row['Sp. Def'],
        speed: row['Speed'],
        generation: row['Generation'],
        legendary: row['Legendary']
    )

    puts "id : #{pokemon.id}, Name: #{pokemon.name}"
    pokemonId += 1
end