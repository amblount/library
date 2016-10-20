class LiberryUsersController < ApplicationController
  before_action :set_liberry_user, only: [:show, :edit, :update, :destroy]

  # GET /liberry_users
  # GET /liberry_users.json
  def index
    @liberry_users = LiberryUser.all
  end

  # GET /liberry_users/1
  # GET /liberry_users/1.json
  def show
  end

  # GET /liberry_users/new
  def new
    @liberry_user = LiberryUser.new
  end

  # GET /liberry_users/1/edit
  def edit
  end

  # POST /liberry_users
  # POST /liberry_users.json
  def create
    @liberry_user = LiberryUser.new(liberry_user_params)

    respond_to do |format|
      if @liberry_user.save
        format.html { redirect_to @liberry_user, notice: 'Liberry user was successfully created.' }
        format.json { render :show, status: :created, location: @liberry_user }
      else
        format.html { render :new }
        format.json { render json: @liberry_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /liberry_users/1
  # PATCH/PUT /liberry_users/1.json
  def update
    respond_to do |format|
      if @liberry_user.update(liberry_user_params)
        format.html { redirect_to @liberry_user, notice: 'Liberry user was successfully updated.' }
        format.json { render :show, status: :ok, location: @liberry_user }
      else
        format.html { render :edit }
        format.json { render json: @liberry_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /liberry_users/1
  # DELETE /liberry_users/1.json
  def destroy
    @liberry_user.destroy
    respond_to do |format|
      format.html { redirect_to liberry_users_url, notice: 'Liberry user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_liberry_user
      @liberry_user = LiberryUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def liberry_user_params
      params.require(:liberry_user).permit(:liberry_id, :user_id)
    end
end
