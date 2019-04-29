# User controller (not devise)
class UsersController < ApplicationController
  def index
    # TODO: protect from no login?  at least contact info?
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end
end
