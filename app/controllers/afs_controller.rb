class AfsController < ApplicationController
 def index
  	@afs = Af.first.fields
  	@af = Af.all[rand(0..9)]
  end
  def show
  end
end
