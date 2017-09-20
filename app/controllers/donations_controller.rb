class DonationsController < ApplicationController 

  def new
    @donation = Donation.new
  end

  def create
    @donation = Donation.new donation_params
    if @donation.save
      redirect_to @donation
    else
      render :new
    end
  end

  def show
    @bitcoin_payment = BitcoinPayable::BitcoinPayment.find_by(address: params[:id])
    @donation = @bitcoin_payment.payable
  end

  protected

  def donation_params
    params.require(:donation).permit(:amount)
  end

end