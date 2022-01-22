class PropertiesController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @properties = Property.all.order('created_at DESC')
  end

  def new
    @property = Property.new
  end

  def create
    @property = Property.new(property_params)
    if @property.valid?
      @property.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def property_params
    params.require(:property).permit(:name, :info, :frequency_id, :storage, :image).merge(user_id: current_user.id)
  end
end
