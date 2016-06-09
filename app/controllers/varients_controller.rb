
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
    @style = Style.find(params[:style_id])
    @varient = @style.varients.find(params[:id])
  end

  def update
    @style = Style.find(params[:style_id])
    @varient = @style.varients.find(params[:id])
    if @varient.update_attributes(varient_params)
      redirect_to style_varient_path(@style)
    else
      redirect_to edit_style_varient_path(@style)
    end
  end

  def destroy
    @style = Style.find(params[:style_id])
    @varient = Varient.find(params[:id])
    if @varient.destroy
      redirect_to style_path(@style)
    else
      redirect_to style_path(@style)

    end
  end

  private
  def varient_params
    params.require(:varient).permit(:picture, :color, :material, :image)
  end

end
