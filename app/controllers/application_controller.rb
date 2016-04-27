class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :get_categories, :get_testimonials

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
