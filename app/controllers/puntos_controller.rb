class PuntosController < ApplicationController
  before_action :find_user

  def index
    @puntos = Punto.all
  end

  def show
    @punto = Punto.find(params[:id])
  end

  def new
    @punto = current_user.puntos.last
    if @punto.out
      @punto = Punto.new
    end
  end

  def create
    @punto = Punto.new(punto_params)
    @punto.user = @user
    if @punto.save
      redirect_to new_punto_path(@punto)
    else
      flash.alert = "No punto"
      render :new
    end
  end

  def edit
  end

  def update
    @punto = current_user.puntos.last
    if @punto.in
     @punto.update(punto_params)
     redirect_to authenticated_root_path
   else
    render :edit
  end
end

private

def find_user
  @user = User.find(current_user.id)
end

def punto_params
  params.require(:punto).permit(
    :in, :out, :date, :note,
    :active, :weekend, :night_shift,
    :day, :night, :day_off
    )
end
end

