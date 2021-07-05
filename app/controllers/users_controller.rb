class UsersController < ApplicationController
  def show
    @users = User.find(params[:id])

    @name = @users.name
    @prototypes = @users.prototypes
    @profile = @users.profile
    @occupation = @users.occupation
    @position = @users.position
  end
end
