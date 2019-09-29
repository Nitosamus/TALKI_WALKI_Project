class FieldsController < ApplicationController
  def index
    
  end

  def show
    @field = Field.find(params[:id])
    field = Field.find(params[:id])
    @mfs = field.mfs
    @ffs = field.ffs
  end

  def edit
  end

  def update
  end

  def new
  end

  def createdestroy
  end
end
