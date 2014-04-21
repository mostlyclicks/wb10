module Refinery
  module Categories
    class CategoriesController < ::ApplicationController

      before_filter :find_all_categories
      before_filter :find_page
      before_filter :find_all_projects, only: :show

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @category in the line below:
        present(@page)
      end

      def show
        @category = Category.find(params[:id])
        #projects = Refinery::Projects::Project
        @cat_projects = @projects.where(category_id: @category)
        #@cat_projects = @projects.find_by(category_id: :id)


        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @category in the line below:
        present(@page)
      end

    protected

      def find_all_categories
        @categories = Category.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/categories").first
      end

      def find_all_projects
        @projects = Refinery::Projects::Project
      end

    end
  end
end
