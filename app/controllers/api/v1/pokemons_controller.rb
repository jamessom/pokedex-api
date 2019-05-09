class Api::V1::PokemonsController < Api::V1::ApiController
  before_action :set_pokemon, only: [:show, :update, :destroy]

  # GET /pokemons
  def index
    pokemons = Pokemon.all.page(current_page).per(per_page)
    pokemons = pokemons.where('name LIKE ?', "%#{params[:filter]}%") if params[:filter]

    options = generate_meta(pokemons.total_pages, pokemons.total_count)
    render json: [pokemons, options]
  end

  # GET /pokemons/1
  def show
    render json: @pokemon
  end

  # POST /pokemons
  def create
    @pokemon = Pokemon.new(pokemon_params)

    assign_evolution(pokemon_params)

    if @pokemon.save
      render json: @pokemon, status: :created
    else
      render json: @pokemon.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pokemons/1
  def update
    if @pokemon.update(pokemon_params)
      render json: @pokemon
    else
      render json: @pokemon.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pokemons/1
  def destroy
    @pokemon.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pokemon
      @pokemon = Pokemon.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def pokemon_params
      params.require(:pokemon).permit(:name, :parent_id)
    end

    def assign_evolution(pokemon_params)
      if pokemon_params['parent_id']
        ancestors = Pokemon.find_by id: pokemon_params['parent_id']
        @pokemon.parent_id = pokemon_params['parent_id']
      end
    end

    def serializer
      PokemonsSerializer
    end
end
