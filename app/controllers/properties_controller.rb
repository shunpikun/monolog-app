class PropertiesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_property, except: [:index, :new, :create]

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

  def show
  end

  def edit
  end

  def update
    if @property.update(property_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    redirect_to root_path if @property.destroy
  end

  private

  def property_params
    params.require(:property).permit(:name, :info, :frequency_id, :storage, :image).merge(user_id: current_user.id)
  end

  def set_property
    @property = Property.find(params[:id])
  end
end
