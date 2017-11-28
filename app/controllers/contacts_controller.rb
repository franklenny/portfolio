class ContactsController < ApplicationController
  def new
    @contact = Contact.new
    if request.xhr?
      p "Thanks!"
    end
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      p "success"
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
    respond_to do |format|
      format.js { render 'contacts/update'}
    end
  end
end
