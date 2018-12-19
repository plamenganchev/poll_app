class PollsController < ApplicationController
  def new
    @poll = Poll.new
    @poll.answers.build 
  end
  
  def create
    @poll = Poll.new(poll_params)
    if @poll.save
      redirect_to @poll
    end
      
  end

  def show
  end
  
  
  private
  
   def poll_params
     params.require(:poll).permit(:question, answers_attributes: [:content])
     #:content => [] 
   end
  
end


