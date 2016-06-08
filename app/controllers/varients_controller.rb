
class VarientsController < ApplicationController

  def index
    @varients = Varient.all
  end

  def show
    @varient = Varient.find(params[:id])
  end

  def new
    @style = Style.find(params[:style_id])
    @varient = @style.varients.new
  end

  def create
    @style = Style.find(params[:style_id])
    @varient = Varient.new(varient_params)
    @varient.style = @style
    if @varient.save
      redirect_to style_path(@style)
    else
      redirect_to new_style_varient_path(@style)
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
