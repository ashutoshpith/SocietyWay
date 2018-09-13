class TsconnectsController < ApplicationController
  before_action :set_tsconnect, only: [:show, :edit, :update, :destroy]

  # GET /tsconnects
  # GET /tsconnects.json
  def index
    @tsconnects = Tsconnect.all
  end

  # GET /tsconnects/1
  # GET /tsconnects/1.json
  def show
  end

  # GET /tsconnects/new
  def new
    @tsconnect = Tsconnect.new
  end

  # GET /tsconnects/1/edit
  def edit
  end

  # POST /tsconnects
  # POST /tsconnects.json
  def create
    @tsconnect = Tsconnect.new(tsconnect_params)

    respond_to do |format|
      if @tsconnect.save
        format.html { redirect_to @tsconnect, notice: 'Tsconnect was successfully created.' }
        format.json { render :show, status: :created, location: @tsconnect }
      else
        format.html { render :new }
        format.json { render json: @tsconnect.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tsconnects/1
  # PATCH/PUT /tsconnects/1.json
  def update
    respond_to do |format|
      if @tsconnect.update(tsconnect_params)
        format.html { redirect_to @tsconnect, notice: 'Tsconnect was successfully updated.' }
        format.json { render :show, status: :ok, location: @tsconnect }
      else
        format.html { render :edit }
        format.json { render json: @tsconnect.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tsconnects/1
  # DELETE /tsconnects/1.json
  def destroy
    @tsconnect.destroy
    respond_to do |format|
      format.html { redirect_to tsconnects_url, notice: 'Tsconnect was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tsconnect
      @tsconnect = Tsconnect.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tsconnect_params
      params.require(:tsconnect).permit(:billing_id, :shop_id, :tenant_id)
    end
end
