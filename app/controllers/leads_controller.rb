class LeadsController < ApplicationController
	def create
    @lead = Lead.new(lead_params)
    
    if @lead.save
      LeadMailer.homepage_email(@lead).deliver_later
      redirect_to lead_path(@lead), notice: 'Your message was sent sucessfully.'
    else
      render :new
    end
  end

  def show
  	@lead = Lead.find(params[:id])
  end

  private

    def lead_params
      params.permit(:name, :email, :phone, :message)
    end
end