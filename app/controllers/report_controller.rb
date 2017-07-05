class ReportController < ApplicationController

  def index
  	@contacts = Contact.all
  	@logs = current_user.logs
  	@users = User.all
  end

  def logs
   
  end

  def contacts
    
  end

end
