class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :get_categories

  protected

    def get_categories
      @categories = Refinery::Categories::Category.all
    end
end
