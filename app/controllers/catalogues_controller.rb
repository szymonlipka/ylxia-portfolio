class CataloguesController < ApplicationController
  before_action :set_catalogue, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: :show

  # GET /catalogues
  # GET /catalogues.json
  def index
    @catalogues = Catalogue.all
  end

  # GET /catalogues/1
  # GET /catalogues/1.json
  def show
  end

  # GET /catalogues/new
  def new
    @catalogue = Catalogue.new
  end

  # GET /catalogues/1/edit
  def edit
  end

  # POST /catalogues
  # POST /catalogues.json
  def create
    @catalogue = Catalogue.new(catalogue_params)

    respond_to do |format|
      if @catalogue.save
        format.html { redirect_to @catalogue, notice: 'Catalogue was successfully created.' }
        format.json { render :show, status: :created, location: @catalogue }
      else
        format.html { render :new }
        format.json { render json: @catalogue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /catalogues/1
  # PATCH/PUT /catalogues/1.json
  def update
    respond_to do |format|
      if @catalogue.update(catalogue_params)
        format.html { redirect_to @catalogue, notice: 'Catalogue was successfully updated.' }
        format.json { render :show, status: :ok, location: @catalogue }
      else
        format.html { render :edit }
        format.json { render json: @catalogue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /catalogues/1
  # DELETE /catalogues/1.json
  def destroy
    @catalogue.destroy
    respond_to do |format|
      format.html { redirect_to catalogues_url, notice: 'Catalogue was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_gallery
    @gallery = Gallery.find(params[:gallery_id])
  end
  # Use callbacks to share common setup or constraints between actions.
  def set_catalogue
    @catalogue = Catalogue.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def catalogue_params
    params.require(:catalogue).permit(:name, :representative_image, :gallery_id)
  end
end
