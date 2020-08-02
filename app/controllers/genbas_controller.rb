class GenbasController < ApplicationController
  before_action :find_company, except: [:destroy]

  def new
    @genba = Genba.new
  end

  def create
    @genba = Genba.new(genba_params)
    @genba.company = @company
    if @genba.save
      redirect_to company_path(@company)
    else
      render :new
    end
  end

  def destroy
    @genba = Genba.find(params[:id])
    @company = @genba.company_id
    @genba.destroy
    redirect_to company_path(@genba.company)
  end

  private

  def find_company
    @company = Company.find(params[:company_id])
  end

  def genba_params
    params.require(:genba).permit(:name, :address, :contact, :phone, :closure)
  end
end
