class ContactsController < ApplicationController
  def index
    @contacts = Contact.all.order(created_at: :DESC)
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to action: "index"
    else
      redirect_to action: "new"
    end
  end

  private
  def contact_params
    params.require(:contact).permit(:name, :email, :content)
  end
end
