class PollsController < ApplicationController\
   
    
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
    @poll = Poll.find_by(share_token: params[:id])
  end
  
  def update
 
  end
  
  private
  
   def post_params
     params.require(:poll).permit(:question, answers_attributes: [:id,:answer_content,:_destroy])
   end
   

  
end


