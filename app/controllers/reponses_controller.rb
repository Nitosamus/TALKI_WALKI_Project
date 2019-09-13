class ReponsesController < ApplicationController
  def create
    @reponse = Reponse.create(reponse_params)
    redirect_to reponse_path(@reponse.id)
  end

  def new
   @reponse = Reponse.new
  end

  def edit
    @reponse = Reponse.find(params[:id])
  end

  def destroy
    @reponse = Reponse.find(params[:id])
    @reponse.destroy
    redirect_to reponse_path
  end

  def update
    @reponse = Reponse.find(params[:id])
    @reponse.update(reponse_params)
    redirect_to reponse_path(@reponse.id)
  end

  def show
         @reponse = Reponse.find(params[:id])
  end

  def index
       @reponses = Reponse.all
  end
   private

   def reponse_params
    params.require(:reponse).permit(:contenu)
   end
end
