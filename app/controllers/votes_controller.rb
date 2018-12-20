class VotesController < ApplicationController
   before_action :check_ip, only: [:create]
   
  def create
     @vote = Vote.new(vote_params)
     if @vote.save
      render plain: "success"
     end
     
  end
  
  private
   def vote_params
     params.require(:vote).permit(:poll_id,:answer_id)
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
