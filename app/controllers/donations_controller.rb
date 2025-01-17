class  DonationsController < ApplicationController
  def index
  end
 
  def new
    @donation = UserDonation.new   
  end
 
  def create
    @donation = UserDonation.new(donation_params)   
    @donation.save
  end
 
  private
 
  def donation_params
   params.require(:user_donation).permit(:name, :name_reading, :nickname, :postal_code, :prefecture, :city, :house_number, :building_name, :price)
  end
 
 end