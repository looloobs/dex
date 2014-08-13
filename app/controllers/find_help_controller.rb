class FindHelpController < ApplicationController
  def index
    @contact = Contact.all
  end
end
