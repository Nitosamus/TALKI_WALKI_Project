class JobsController < ApplicationController
  def index
  	@field = Field.find(params[:field_id])
  end
  def show
  	@job = Job.find(params[:id])
  end
end
