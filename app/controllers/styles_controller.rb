class StylesController < ApplicationController
  before_action :set_style, only: [:default_image, :name, :style_number, :reference, :cost, :msrp]

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
    if @style.update_variant(style_params)
      redirect_to style_path(@style)
    else
      redirect_to edit_style_path(@style)
    end
  end

  def destroy
  end
end
  private
  def set_style
    @style = Style.find(params(:id))
  end

  def style_params
    params.require(:style).permit(:default_image, :name, :style_number, :reference, :cost, :msrp)

    end)

  end
