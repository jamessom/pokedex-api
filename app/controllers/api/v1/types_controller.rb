class Api::V1::TypesController < Api::V1::ApiController
  before_action :set_type, only: [:show, :update, :destroy]

  # GET /types
  def index
    @paginatedTypes = Type.all.page(current_page).per(per_page)
    options = generate_meta(@paginatedTypes.total_pages, @paginatedTypes.total_count)
    render json: [@paginatedTypes, options]
  end

  # GET /types/1
  def show
    render json: @type
  end

  # POST /types
  def create
    @type = Type.new(type_params)

    if @type.save
      render json: @type, status: :created, location: @type
    else
      render json: @type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /types/1
  def update
    if @type.update(type_params)
      render json: @type
    else
      render json: @type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /types/1
  def destroy
    @type.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type
      @type = Type.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def type_params
      params.require(:type).permit(:name)
    end

    def serializer
      TypesSerializer
    end
end
