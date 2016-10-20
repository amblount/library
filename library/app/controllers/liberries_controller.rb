class LiberriesController < ApplicationController
  before_action :set_liberry, only: [:show, :edit, :update, :destroy]

  # GET /liberries
  # GET /liberries.json
  def index
    @liberries = Liberry.all
  end

  # GET /liberries/1
  # GET /liberries/1.json
  def show
  end

  # GET /liberries/new
  def new
    @liberry = Liberry.new
  end

  # GET /liberries/1/edit
  def edit
  end

  # POST /liberries
  # POST /liberries.json
  def create
    @liberry = Liberry.new(liberry_params)

    respond_to do |format|
      if @liberry.save
        format.html { redirect_to @liberry, notice: 'Liberry was successfully created.' }
        format.json { render :show, status: :created, location: @liberry }
      else
        format.html { render :new }
        format.json { render json: @liberry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /liberries/1
  # PATCH/PUT /liberries/1.json
  def update
    respond_to do |format|
      if @liberry.update(liberry_params)
        format.html { redirect_to @liberry, notice: 'Liberry was successfully updated.' }
        format.json { render :show, status: :ok, location: @liberry }
      else
        format.html { render :edit }
        format.json { render json: @liberry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /liberries/1
  # DELETE /liberries/1.json
  def destroy
    @liberry.destroy
    respond_to do |format|
      format.html { redirect_to liberries_url, notice: 'Liberry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_liberry
      @liberry = Liberry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def liberry_params
      params.require(:liberry).permit(:name, :floor_count, :florr_area)
    end
end
