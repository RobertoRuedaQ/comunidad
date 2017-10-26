class WerehousesController < ApplicationController
  before_action :set_werehouse, only: [:show, :edit, :update, :destroy]

  # GET /werehouses
  # GET /werehouses.json
  def index
    @werehouses = Werehouse.all
  end

  # GET /werehouses/1
  # GET /werehouses/1.json
  def show
  end

  # GET /werehouses/new
  def new
    @werehouse = Werehouse.new
  end

  # GET /werehouses/1/edit
  def edit
  end

  # POST /werehouses
  # POST /werehouses.json
  def create
    @werehouse = Werehouse.new(werehouse_params)

    respond_to do |format|
      if @werehouse.save
        format.html { redirect_to family_path, notice: 'Werehouse was successfully created.' }
        format.json { render :show, status: :created, location: @werehouse }
      else
        format.html { render :new }
        format.json { render json: @werehouse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /werehouses/1
  # PATCH/PUT /werehouses/1.json
  def update
    respond_to do |format|
      if @werehouse.update(werehouse_params)
        format.html { redirect_to @werehouse, notice: 'Werehouse was successfully updated.' }
        format.json { render :show, status: :ok, location: @werehouse }
      else
        format.html { render :edit }
        format.json { render json: @werehouse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /werehouses/1
  # DELETE /werehouses/1.json
  def destroy
    @werehouse.destroy
    respond_to do |format|
      format.html { redirect_to werehouses_url, notice: 'Werehouse was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_werehouse
      @werehouse = Werehouse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def werehouse_params
      params.require(:werehouse).permit(:name, :last_name, :document_id, :ARL, :apartment_id)
    end
end
