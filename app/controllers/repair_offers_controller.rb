class RepairOffersController < ApplicationController
  before_action :set_repair_offer, only: %i[ show edit update destroy ]

  # GET /repair_offers or /repair_offers.json
  def index
    @repair_offers = RepairOffer.all
  end

  # GET /repair_offers/1 or /repair_offers/1.json
  def show
  end

  # GET /repair_offers/new
  def new
    @repair_offer = RepairOffer.new
  end

  # GET /repair_offers/1/edit
  def edit
  end

  # POST /repair_offers or /repair_offers.json
  def create
    @repair_offer = RepairOffer.new(repair_offer_params)

    respond_to do |format|
      if @repair_offer.save
        format.html { redirect_to repair_offer_url(@repair_offer), notice: "Repair offer was successfully created." }
        format.json { render :show, status: :created, location: @repair_offer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @repair_offer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /repair_offers/1 or /repair_offers/1.json
  def update
    respond_to do |format|
      if @repair_offer.update(repair_offer_params)
        format.html { redirect_to repair_offer_url(@repair_offer), notice: "Repair offer was successfully updated." }
        format.json { render :show, status: :ok, location: @repair_offer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @repair_offer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /repair_offers/1 or /repair_offers/1.json
  def destroy
    @repair_offer.destroy

    respond_to do |format|
      format.html { redirect_to repair_offers_url, notice: "Repair offer was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_repair_offer
      @repair_offer = RepairOffer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def repair_offer_params
      params.require(:repair_offer).permit(:ID_User, :ID_ForumPost, :content, :description)
    end
end
