class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :get_categories, :get_testimonials

  helper_method :check_page, :authenticate_page

  def check_page
      authenticate_page
  end


  def authenticate_page
      authenticate_or_request_with_http_basic do |username, password|
        username == "wieser" && password == "wbsafety"
      # else
      #   redirect_to '/unauthorized'
      end
  end




  protected

    def get_categories
      @categories = Refinery::Categories::Category.all
    end

    def get_testimonials
      @testimonials = Refinery::Testimonials::Testimonial.where(testimonial_type: 'Client')
      @testimonial_sample = @testimonials.sample
      @employee_testimonial = Refinery::Testimonials::Testimonial.where(testimonial_type: 'Employee').first
    end


end
