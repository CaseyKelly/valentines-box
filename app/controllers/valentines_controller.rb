class ValentinesController < ApplicationController
  before_action :set_valentine, only: [:show, :edit, :update, :destroy]
  before_filter :authorize, only: [:destroy]

  def index
    @valentines = Valentine.all
    @valentine = Valentine.new
  end

  def new
    @valentine = Valentine.new
  end

  def create
    @valentine = Valentine.new(valentine_params)
    if @valentine.save
        redirect_to valentines_path, notice: 'Valentine was successfully created.'
      end
  end

  def destroy
    @valentine.destroy
      redirect_to valentines_path, notice: 'Valentine was successfully deleted.'
  end

  private

  def set_valentine
    @valentine = Valentine.find(params[:id])
  end

  def valentine_params
    params.require(:valentine).permit(:name, :message)
  end

end
