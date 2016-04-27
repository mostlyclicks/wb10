class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :get_categories, :get_testimonials

  protected

    def get_categories
      @categories = Refinery::Categories::Category.all
    end

    def get_testimonials
      # @projects_all = Refinery::Projects::Project.all
      # @testimonials = []
      # @projects_all.each do |t|
      #   if t.testimonial?
      #     @testimonials << t
      #   end
      # end


      #Load all testimonials
      @testimonials = Refinery::Testimonials::Testimonial.all
      @testimonial_sample = @testimonials.sample
      @employee_testimonial = Refinery::Testimonials::Testimonial.where(testimonial_type: 'Employee').first

      # @emp_testimonial = Refinery::Testimonials::Testimonial.where(testimonial_type: 'Employee').first
      
      
      # @testimonials.each do |te|
      #   if te.testimonial_type == 'Employee'
      #     @testimonial_sample = te
      #   else
          
      #   end
      # end

    end


end
