module Refinery
  module Projects
    module Admin
      class ProjectsController < ::Refinery::AdminController

        before_filter :find_all_categories#, :only => [:show]

        crudify :'refinery/projects/project',
                :xhr_paging => true

        protected

          def find_all_categories
            @categories = Refinery::Categories::Category.all
          end

          

      end
    end
  end
end
