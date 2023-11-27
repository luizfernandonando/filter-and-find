class FirmsController < ApplicationController

  def index
    @firms = Firm.all
  end

  def show
    @firms = Firm.find(:params)
  end


  private

  def firm_params
    params.require(:firm).permit(:name, :description, :sector)
  end

end
