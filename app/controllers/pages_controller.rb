class PagesController < ApplicationController
  before_action :require_admin, except: [:show]
  before_action :set_page, only: [:edit, :update]

  # GET /pages/1
  def show
    @page = Page.find_by(name: params[:id])
  end

  # GET /pages/1/edit
  def edit
  end

  # PATCH/PUT /pages/1
  def update
    if @page.update(page_params)
      redirect_to @page, notice: 'Page was successfully updated.'
    else
      render :edit
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_page
      @page = Page.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def page_params
      params.require(:page).permit(:title, :name, :content)
    end
end
