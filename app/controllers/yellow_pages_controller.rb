class YellowPagesController < ApplicationController
  before_action :set_yellow_page, only: [:show, :edit, :update, :destroy]

  # GET /yellow_pages
  # GET /yellow_pages.json
  def index
    @yellow_pages = YellowPage.all
  end

  # GET /yellow_pages/1
  # GET /yellow_pages/1.json
  def show
  end

  # GET /yellow_pages/new
  def new
    @yellow_page = YellowPage.new
  end

  # GET /yellow_pages/1/edit
  def edit
  end

  # POST /yellow_pages
  # POST /yellow_pages.json
  def create
    @yellow_page = YellowPage.new(yellow_page_params)

    respond_to do |format|
      if @yellow_page.save
        format.html { redirect_to @yellow_page, notice: 'Yellow page was successfully created.' }
        format.json { render :show, status: :created, location: @yellow_page }
      else
        format.html { render :new }
        format.json { render json: @yellow_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /yellow_pages/1
  # PATCH/PUT /yellow_pages/1.json
  def update
    respond_to do |format|
      if @yellow_page.update(yellow_page_params)
        format.html { redirect_to @yellow_page, notice: 'Yellow page was successfully updated.' }
        format.json { render :show, status: :ok, location: @yellow_page }
      else
        format.html { render :edit }
        format.json { render json: @yellow_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /yellow_pages/1
  # DELETE /yellow_pages/1.json
  def destroy
    @yellow_page.destroy
    respond_to do |format|
      format.html { redirect_to yellow_pages_url, notice: 'Yellow page was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_yellow_page
      @yellow_page = YellowPage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def yellow_page_params
      params.require(:yellow_page).permit(:business_url, :business_name, :business_category, :business_logo, :business_tagline, :business_phone, :business_email, :business_website, :business_home_city, :business_state, :business_postal_code, :business_about, :business_services, :business_association, :business_opporating_hours, :business_products, :business_brands, :business_features, :business_keywords, :business_review, :business_review_name, :business_review_star, :business_faqs)
    end
end
