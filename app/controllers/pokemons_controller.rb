class PokemonsController < ApplicationController
    
    def index
        @pokemons = Pokemon.all
        render json: @pokemons
    end

    def show
        @pokemon = Pokemon.paginate(page: params[:page], per_page: params[:page_size])
        render json: @pokemon
    end

    def update
        @pokemon = Pokemon.find(params[:id])
        puts @pokemon.update!(params
        .permit(:id, :entry, :name, :firstType, :secondType, :total, :hp, :attack,
        :defense, :specialAttack, :specialDefense, :speed, :generation, :legendary))
        render json: @pokemon
    end

    def destroy
        @pokemon = Pokemon.find(params[:id])
        @pokemon.destroy
        render json: @pokemon
    end

    def create
        @pokemon = Pokemon.create!(params
        .permit(:id, :entry, :name, :firstType, :secondType, :total, :hp, :attack,
        :defense, :specialAttack, :specialDefense, :speed, :generation, :legendary))
        render json: @pokemon
    end  
end
