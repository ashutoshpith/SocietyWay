class TSConnectsController < ApplicationController
  before_action :set_t_s_connect, only: [:show, :edit, :update, :destroy]

  # GET /t_s_connects
  # GET /t_s_connects.json
  def index
    @t_s_connects = TSConnect.all
  end

  # GET /t_s_connects/1
  # GET /t_s_connects/1.json
  def show
  end

  # GET /t_s_connects/new
  def new
    @t_s_connect = TSConnect.new
  end

  # GET /t_s_connects/1/edit
  def edit
  end

  # POST /t_s_connects
  # POST /t_s_connects.json
  def create
    @t_s_connect = TSConnect.new(t_s_connect_params)

    respond_to do |format|
      if @t_s_connect.save
        format.html { redirect_to @t_s_connect, notice: 'T s connect was successfully created.' }
        format.json { render :show, status: :created, location: @t_s_connect }
      else
        format.html { render :new }
        format.json { render json: @t_s_connect.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /t_s_connects/1
  # PATCH/PUT /t_s_connects/1.json
  def update
    respond_to do |format|
      if @t_s_connect.update(t_s_connect_params)
        format.html { redirect_to @t_s_connect, notice: 'T s connect was successfully updated.' }
        format.json { render :show, status: :ok, location: @t_s_connect }
      else
        format.html { render :edit }
        format.json { render json: @t_s_connect.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /t_s_connects/1
  # DELETE /t_s_connects/1.json
  def destroy
    @t_s_connect.destroy
    respond_to do |format|
      format.html { redirect_to t_s_connects_url, notice: 'T s connect was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_t_s_connect
      @t_s_connect = TSConnect.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def t_s_connect_params
      params.require(:t_s_connect).permit(:billing_id, :shop_id, :tenant_id)
    end
end
