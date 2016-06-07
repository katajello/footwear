
class StylesController < ApplicationController
  before_action :set_style, only: [:show, :edit, :update, :destroy]

  def index
    @styles = Style.all
  end

  def show

  end

  def new
    @style = Style.new
  end

  def create
    @style = Style.new(style_params)
    if @style.save
      redirect_to root_path
    else
      render :new
    end

  end

  def edit
  end

  def update
    if @style.update_attributes(style_params)
      redirect_to style_path(@style)
    else
      redirect_to edit_style_path(@style)
    end
  end

  def destroy
    if @style.destroy
      redirect_to root_path
    else
      redirect_to style_path(@style)
    end
  end

  private
  def set_style
    @style = Style.find(params[:id])
  end

  def style_params
    params.require(:style).permit(:avatar, :default_image, :name, :style_number, :reference, :cost, :msrp)
  end
end
