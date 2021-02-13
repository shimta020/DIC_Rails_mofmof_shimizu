class PropertiesController < ApplicationController
  before_action :set_property, only: %i(show edit update destroy)
  def index
    @properties = Property.all
  end
  def new
    @property = Property.new
  end
  def create
    @property = Property.new(property_params)
    if params[:back]
      render :new
    else
      if @property.save
        redirect_to properties_path, notice: '物件情報を登録しました!'
      else
        render :new
      end
    end
  end
  def show
  end
  def edit
  end
  def update
    if @property.update(property_params)
      redirect_to properties_path, notice: '物件情報を更新しました!'
    else
      render :edit
    end
  end
  def destroy
    if @property.destroy
      redirect_to properties_path, notice: '物件情報を削除しました!'
    end
  end
  def confirm
    @property = Property.new(property_params)
  end
  private
  def property_params
    params.require(:property).permit(:name, :rent, :address, :age, :notes)
  end
  def set_property
    @property = Property.find(params[:id])
  end
end
