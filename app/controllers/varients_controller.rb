
class VarientsController < ApplicationController

  def index
    @varients = Varient.all
  end

  def show
    @varient = Varient.find(params[:id])
  end

  def new
    @varient = Varient.new
  end

  def create
    @varient = Varient.new(varient_params)
    @varient.style = current_style
    if @varient.save
      redirect_to varient_path(@varient)
    else
      redirect_to new_varient_path
    end
  end

  def edit
  end

  def update

  end

  def destroy
  end

  private
  def varient_params
    params.require(:varient).permit(:color, :material, :image)

  end

end
