class PricingFormsController < ApplicationController
  before_action :set_pricing_form, only: [:show, :edit, :update, :destroy]

  # GET /pricing_forms
  # GET /pricing_forms.json
  def index
    @pricing_forms = PricingForm.all
  end

  # GET /pricing_forms/1
  # GET /pricing_forms/1.json
  def show
  end

  # GET /pricing_forms/new
  def new
    @pricing_form = PricingForm.new
  end

  # GET /pricing_forms/1/edit
  def edit
  end

  # POST /pricing_forms
  # POST /pricing_forms.json
  def create
    @pricing_form = PricingForm.new(pricing_form_params)

    respond_to do |format|
      if @pricing_form.save
        format.html { redirect_to @pricing_form, notice: 'Pricing form was successfully created.' }
        format.json { render :show, status: :created, location: @pricing_form }
      else
        format.html { render :new }
        format.json { render json: @pricing_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pricing_forms/1
  # PATCH/PUT /pricing_forms/1.json
  def update
    respond_to do |format|
      if @pricing_form.update(pricing_form_params)
        format.html { redirect_to @pricing_form, notice: 'Pricing form was successfully updated.' }
        format.json { render :show, status: :ok, location: @pricing_form }
      else
        format.html { render :edit }
        format.json { render json: @pricing_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pricing_forms/1
  # DELETE /pricing_forms/1.json
  def destroy
    @pricing_form.destroy
    respond_to do |format|
      format.html { redirect_to pricing_forms_url, notice: 'Pricing form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pricing_form
      @pricing_form = PricingForm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pricing_form_params
      params.require(:pricing_form).permit(:Product_id, :Vendor_id, :price)
    end
end
