class PuntosController < ApplicationController

  def index
    @puntos = Punto.all
  end

  def show
    @punto = Punto.find(params[:id])
  end

  def new
    @punto = Punto.new
  end

  def create
    @punto = Punto.new(punto_params)
    @punto.genba = @genba
    @punto.company = @company
    @punto.employee = @employee
    @punto.user = @user
    if @punto.save
      redirect_to punto_path
    else
      flash.alert = "No punto"
      render :new
    end
  end

  private

  def find_user
    @genba = Genba.find(params[:id])
    @company = Company.find(params[:id])
    @employee = Employee.find(params[:id])
    @user = User.find(params[:id])
  end

  def punto_params
    params.require(:punto).permit(
      :in, :out, :date, :note,
      :active, :weekend, :night_shift,
      :day, :night, :day_off
      )
  end
end

