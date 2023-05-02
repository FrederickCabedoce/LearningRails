class CreatePokemons < ActiveRecord::Migration[7.0]
  def change
    create_table(:pokemons) do |t|
      t.string :entry
      t.string :name
      t.string :firstType
      t.string :secondType
      t.string :total
      t.string :hp
      t.string :attack
      t.string :defense
      t.string :specialAttack
      t.string :specialDefense
      t.string :speed
      t.string :generation
      t.string :legendary
      t.timestamps
    end
  end
end
