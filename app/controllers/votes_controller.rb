class VotesController < ApplicationController
   before_action :check_ip, only: [:create]
   
  def create
     @vote = Vote.new(vote_params)
     if @vote.save
        @answer = Answer.find(params[:vote][:answer_id])
        @answer.increment!(:count)
        respond_to do |format|
         format.html { redirect_to root_url }
         format.js
        end
     else
      redirect_to root_url
     end
     
  end
  
  private
   def vote_params
     params.require(:vote).permit(:poll_id,:answer_id,:voter_ip)
   end
   
   
   def check_ip
    ip = request.remote_ip
    @poll = Poll.find(params[:vote][:poll_id])
    @poll.votes.each do |m|
     if m.voter_ip == ip
      redirect_to root_url
      return
     end
    end
   end#end ofcheck_ip
   
end#class
