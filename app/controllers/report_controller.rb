class ReportController < ApplicationController

  def index
  	@contacts = Contact.all
  	@logs = current_user.logs
  	@users = User.all
  end

  def logs
    @logs = current_user.logs.order('call_date')
  end

  def contacts
  	@contacts = Contact.all
  end

end
