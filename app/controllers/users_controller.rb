class UsersController < ApplicationController
	def new
	end

	def create
		@user = User.new(params.require(:user).permit(:name, :first_name))

		@user.save
		redirect_to @user 
	end

	def show
		@user = User.find(params[:id])
	end
end