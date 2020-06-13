class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  def home # naming an action like this is a bad practice
    @teacher = Teacher.last



  end


end
