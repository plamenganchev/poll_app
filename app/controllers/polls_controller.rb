class PollsController < ApplicationController
  def new
    @poll = Poll.new 
   #5.times { @poll.answers.build }
 @poll.answers.build
  end
  
  def create
    @poll = Poll.new(post_params)
    @array = [] 
    if @poll.save
      respond_to do |format|
      format.html { redirect_to @user }
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
   

  
end


