class ConversionsController < ApplicationController
  def index
    @conversions = Conversion.all
  end

  def show
    @conversion = Conversion.find(params[:id])
    @comment = Comment.new
    @comments = @conversion.comments
  end

  def new
    @conversion = Conversion.new
  end

  def create
    @conversion = Conversion.new(conversion_params)
    @conversion.conversion
    if @conversion.save
      redirect_to conversions_path
    else
      render :new
    end
  end

  private

  def conversion_params
    params.require(:conversion).permit(:input)
  end
end
