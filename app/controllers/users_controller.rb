# User controller (not devise)
class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]

  # GET /users
  # GET /users.json
  def index
    @users = User.all.includes(:addresses)
    fresh_when(@users)
  end

  # GET /users/1
  # GET /users/1.json
  def show
    fresh_when(@user)
  end

  # GET /users/new
  # NOTE: Devise handles this at /users/regigstration

  # GET /users/1/edit
  def edit
    return unless @user.address.nil?

    @user.build_address
  end

  # POST /users
  # POST /users.json
  # NOTE: this is handled by devise user/registration

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    return unless @user == current_user

    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params
      .require(:user)
      .permit(
        :first_name, :last_name, :display_name, :phone,
        address_attributes: [:line_one, :line_two, :city, :street, :state,
                             :zip_code, :country]
      )
  end
end
