class BandsController < ApplicationController
  def index
    @bands = Band.all
    render :index
  end
  def show
    @band = Band.find_by(id: params[:id])
    render :show
  end
  def new
    @band = Band.new
    render :new
  end
  def create
    @band = Band.new(clean_params)
    if @band.save
      redirect_to bands_url
    else
      flash.now[:error] = 'How could you get the only input wrong?'
      render :new
    end
  end
  def edit
    @band = Band.find_by(id: params[:id])
    render :edit
  end
  def update
    @band = Band.find_by(name: name)
    if @band.update_attributes(clean_params)
      redirect_to band_url(@band)
    else
      flash.now[:error] = ['how could you get the only input wrong?']
      render :edit
    end
  end
  def destroy
    @band = Band.find_by(name: name)
    @band.destroy
    render :index
  end

  private
  def clean_params
    params.require(:band).permit(:name)
  end
end
