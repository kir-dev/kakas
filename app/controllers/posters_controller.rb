class PostersController < ApplicationController
  before_action :set_poster, only: [:show, :edit, :update, :destroy]

  # GET /posters
  def index
    @posters = Poster.all
  end

  # GET /posters/1
  def show
  end

  # GET /posters/new
  def new
    @poster = Poster.new
  end

  # GET /posters/1/edit
  def edit
  end

  # POST /posters
  def create
    @poster = Poster.new(poster_params)

    if @poster.save
      redirect_to @poster, notice: 'Poster was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /posters/1
  def update
    if @poster.update(poster_params)
      redirect_to @poster, notice: 'Poster was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /posters/1
  def destroy
    @poster.destroy
    redirect_to posters_url, notice: 'Poster was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poster
      @poster = Poster.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def poster_params
      params.require(:poster).permit(:name, :image)
    end
end
