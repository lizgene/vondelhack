class ApplicationController < ActionController::Base
  protect_from_forgery

  def ping
    class_id = params[:class_id]
    VondelHacker.book_class(class_id)

    render :nothing => true, :status => 200
  end
end
