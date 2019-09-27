class PfsController < ApplicationController
  def index
	@pfs = Pf.first.fields
  	@pf = Pf.all[rand(0..9)]
  end
end
