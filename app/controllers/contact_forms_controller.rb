class ContactFormsController < ApplicationController

  def index
    head :ok
  end

  def show
    head :ok

  end

  def new
  	@contact_form = ContactForm.new
  end

  def create
  	begin
  		@contact_form = ContactForm.new
  		@contact_form.request = request
  		if @contact_form.deliver
  			flash.now[:notice] = 'Thank you for the message!'
  		else
  			render :new
  		end
  	rescue ScriptError
  		flash[:error] = 'Sorry, this message appears to be spam and was not delivered.'
  	end
  end
end
