class SeedsController < ApplicationController
  before_action :set_seed, only: [:show]

  # GET /seeds
  # GET /seeds.json
  def index
    @seeds = Seed.all().order(id: :asc)
  end

  def topic
    if params[:topic] == "conifers"
      @seeds = Seed.all.where(conifers: true).order(id: :asc)
    elsif params[:topic] == "deciduous"
      @seeds = Seed.all.where(conifers: false).order(id: :asc)
    else
      return redirect_to root_path, notice: "Ну-ка не балуй!"
    end
    render 'index'
  end

  # GET /seeds/1
  # GET /seeds/1.json
  def show
  end

  # GET /seeds/new
  # def new
  #   @seed = Seed.new
  # end

  # GET /seeds/1/edit
  # def edit
  # end

  # POST /seeds
  # POST /seeds.json
  # def create
  #   @seed = Seed.new(seed_params)

  #   respond_to do |format|
  #     if @seed.save
  #       format.html { redirect_to @seed, notice: 'Seed was successfully created.' }
  #       format.json { render :show, status: :created, location: @seed }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @seed.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # PATCH/PUT /seeds/1
  # PATCH/PUT /seeds/1.json
  # def update
  #   respond_to do |format|
  #     if @seed.update(seed_params)
  #       format.html { redirect_to @seed, notice: 'Seed was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @seed }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @seed.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # DELETE /seeds/1
  # DELETE /seeds/1.json
  # def destroy
  #   @seed.destroy
  #   respond_to do |format|
  #     format.html { redirect_to seeds_url, notice: 'Seed was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seed
      @seed = Seed.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    # def seed_params
    #   params.require(:seed).permit(:title, :latin_title, :description, :usda, :image)
    # end
end
