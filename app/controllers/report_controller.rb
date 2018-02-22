class ReportController < ApplicationController

  def index
  	@contacts = Contact.all
  	@logs = current_user.logs
  	@users = User.all
  end

  def logs
    @logs = current_user.logs.order('call_date')

    respond_to do |format|
    format.html
    format.pdf do
      render pdf: "logs"
    end

  end

  end

  def contacts
  	@contacts = Contact.all
  end

end
