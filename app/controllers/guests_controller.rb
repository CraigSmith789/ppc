class GuestsController < ApplicationController
  def new
    @guest = Guest.new
    @party = Party.find_by_id(params[:party_id])
  end

  def create
    @guest = Guest.new(guest_params)
    @party = Party.find_by_id(params[:party_id])
    @party.guests << @guest
    byebug
  end

  private

    def guest_params
        params.require(:guest).permit(:name)
    end
    
end
