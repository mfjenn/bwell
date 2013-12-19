class InquiriesController < ApplicationController
  
  def new
    @inquiry = Inquiry.new
  end
    
  def thank_you
      begin
        @inquiry = Inquiry.new(params[:inquiry])
        @inquiry.request = request
        if @inquiry.valid?
          @inquiry.deliver
          render :thank_you
        else
          render :new
        end
      rescue ScriptError
        flash[:error] = 'Sorry, this message appears to be spam and was not delivered.'
      end
  end
  
end