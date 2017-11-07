class LinkmenController < ApplicationController
  before_action :set_linkman, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate,only: [:index]


  # GET /linkmen
  # GET /linkmen.json
  def index
  
    @linkmen = Linkman.where(:user_id=>session[:user_id]).all
    
  end

  # GET /linkmen/1
  # GET /linkmen/1.json
  def show
  end

  # GET /linkmen/new
  def new
    @linkman = Linkman.new
  end

  # GET /linkmen/1/edit
  def edit
  end

  # POST /linkmen
  # POST /linkmen.json
  def create
    @linkman = Linkman.new(linkman_params)
     @linkman.user_id = session[:user_id]
    respond_to do |format|
      if @linkman.save
        format.html { redirect_to @linkman, notice: 'Linkman was successfully created.' }
        format.json { render :show, status: :created, location: @linkman }
      else
        format.html { render :new }
        format.json { render json: @linkman.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /linkmen/1
  # PATCH/PUT /linkmen/1.json
  def update
    respond_to do |format|
      if @linkman.update(linkman_params)
        format.html { redirect_to @linkman, notice: 'Linkman was successfully updated.' }
        format.json { render :show, status: :ok, location: @linkman }
      else
        format.html { render :edit }
        format.json { render json: @linkman.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /linkmen/1
  # DELETE /linkmen/1.json
  def destroy
    @linkman.destroy
    respond_to do |format|
      format.html { redirect_to linkmen_url, notice: 'Linkman was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_linkman
      @linkman = Linkman.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def linkman_params
      params.require(:linkman).permit(:name, :number)
    end
end
