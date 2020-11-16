class PropertiesController < ApplicationController
  before_action :set_prop, only: [:show, :edit, :update, :destroy]

  def index
    @properties = Property.all
  end

  def show
  end

  def edit
  end

  def update

  end

  def destroy
  end

  private
  def set_prop
    @prop = Property.find(params[:id])
  end
end
