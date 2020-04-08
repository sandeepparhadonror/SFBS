class FarmerDetailsController < ApplicationController

	before_action :set_farmer, only: [:show, :edit, :update, :destroy]

	def index
		@farmer = FarmerDetail.new
		@pagy, @farmars = pagy(FarmerDetail.all.order(created_at: :desc), items: 6)
		@farmer_action = {action: "new"}
	end

  def show
  end 

	def create
		@farmer = FarmerDetail.new(farmar_deatils_params)
		if @farmer.save
			flash[:success] = "Farmer created successfully"
			redirect_to farmer_details_path
		else
			@farmer_action = {action: "new"}
			@pagy, @farmars = pagy(FarmerDetail.all.order(created_at: :desc), items: 6)
			render 'index'
		end
	end 

	def edit
		@pagy, @farmars = pagy(FarmerDetail.all.order(created_at: :desc), items: 6)
		@farmer_action = {action: "edit"}
	end

	def update
		if @farmer.update(farmar_deatils_params)
			flash[:notice] = "Farmer update successfully"
			redirect_to farmer_details_path
		else
			@farmer_action = {action: "edit"}
			@pagy, @farmars = pagy(FarmerDetail.all.order(created_at: :desc), items: 6)
			render 'index'
		end
	end

	def destroy
		@farmer.destroy
		flash[:alert] = "Farmer deleted successfully"
		redirect_to farmer_details_path
	end

	private


	def set_farmer
		@farmer = FarmerDetail.find(params[:id])
	end

	def farmar_deatils_params
		params.require(:farmer_detail).permit(:first_name, :middle_name, :last_name, :phone_number, 
			:transportation_vehicle, :email, :address)
	end


end
