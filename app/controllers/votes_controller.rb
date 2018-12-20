class VotesController < ApplicationController
  
  def create
     render plain: params[:vote].inspect
  end
  
  private
   def vote_params
     params.require(:vote).permit(:poll_id,:answer_id)
   end
end
