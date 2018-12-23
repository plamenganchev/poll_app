class PollsController < ApplicationController
    before_action :check_ip, only: [:show]
    
  def new
    @poll = Poll.new 
   #5.times { @poll.answers.build }
 @poll.answers.build
  end
  
  def create
    @poll = Poll.new(post_params)
    if @poll.save && !@poll.answers.first.nil? && !@poll.answers.second.nil?
      respond_to do |format|
      format.html { redirect_to root_url }
      format.js
    end
    else
     render 'new'
    end
  end

  def show
  end
  
  def update
 
  end
  
  private
  
   def post_params
     params.require(:poll).permit(:question, answers_attributes: [:id,:answer_content,:_destroy])
   end
   
def check_ip
    ip = request.remote_ip
    @voted_flag = false
    @poll = Poll.find_by(share_token: params[:id])
    if !@poll.votes.first.nil?#if db is reseted then @poll.votes raised error
    @poll.votes.each do |m|
     if m.voter_ip == ip
      @voted_flag = true
      return
     end
    end
  end
   end#end ofcheck_ip
  
end


