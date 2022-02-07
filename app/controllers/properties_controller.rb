class PropertiesController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :set_property, except: [:index, :new, :create, :search]

  def index
    @properties = Property.all.order('created_at DESC')
    if user_signed_in?
      @properties = Property.where(user_id: current_user.id)
    end
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

  def search
    if params[:q]&.dig(:name)
      squished_keywords = params[:q][:name].squish
      params[:q][:name_cont_any] = squished_keywords.split(" ")
    end

    if user_signed_in?
      @q = Property.where(user_id: current_user.id).ransack(params[:q])
    end
    @properties = @q.result
  end

  private

  def property_params
    params.require(:property).permit(:name, :info, :frequency_id, :storage, :image).merge(user_id: current_user.id)
  end

  def set_property
    @property = Property.find(params[:id])
  end
end
