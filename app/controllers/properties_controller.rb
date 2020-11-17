class PropertiesController < ApplicationController
  before_action :set_prop, only: [:show, :edit, :update, :destroy]

  def index
    @properties = Property.all
  end

  def show
    @nearest_stations = @property.nearest_stations
  end

  def new
    @property = Property.new
    2.times do
      @property.nearest_stations.build
    end
  end

  def edit
    @property.nearest_stations.build
  end

  def create
    @property = Property.new(property_params)
    if @property.save
      redirect_to property_path(@property), notice:"投稿されました！"
    else
      render :new
    end
  end

  def update
    if @property.update(property_params)
      redirect_to propertys_path, notice:"編集は正常に行われました"
    else
      render :edit
    end
  end

  def destroy
    @property.destroy
      redirect_to propertys_path, notice:"削除しました"
  end

  private
  def set_prop
    @property = Property.find(params[:id])
  end

  def property_params
    params.require(:property).permit(:name, :fee, :address, :age, :remarks,
          nearest_stations_attributes:[:id, :route, :name, :minute, :property_id])
  end

end
