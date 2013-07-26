class ContactFormsController < ApplicationController
  def new
  	@contact_form = ContactForm.new
  end

  def create
  	begin
      @contact_form = ContactForm.new(params[:contact_form])
      @contact_form.request = request
      if @contact_form.deliver
        #flash.now[:notice] = 'Thank you for your message!'
      else
        render :new
      end
    rescue ScriptError
      flash[:error] = 'Sorry, something went wrong.  This message was not delivered.'
    end
  end
end