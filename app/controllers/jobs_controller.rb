class JobsController < ApplicationController
  def index
  	@jobs = Pf.first.fields
  	@job = Job.all[rand(0..9)]
  end
end
