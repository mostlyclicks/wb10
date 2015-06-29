class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :get_categories, :get_testimonials

  protected

    def get_categories
      @categories = Refinery::Categories::Category.all
    end

    def get_testimonials
      @projects_all = Refinery::Projects::Project.all
      @testimonials = []
      @projects_all.each do |t|
        if t.testimonial?
          @testimonials << t
        end
      end
      @testimonial_sample = @testimonials.sample
    end


end
