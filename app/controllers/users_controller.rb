# frozen_string_literal: true

# User controller (not devise)
class UsersController < ApplicationController
  before_action :set_user, only: %i[show edit update]

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

  # GET /users/1/edit
  def edit
    return unless @user.address.nil?

    @user.build_address
  end

  # NOTE: DEVISE
  # def create; end
  # def update; end
  # def destroy; end

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
        address_attributes: %i[line_one line_two city street state zip_code country]
      )
  end
end
