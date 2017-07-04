module Refinery
  module Redirects
    module Admin
      class RedirectsController < ::Refinery::AdminController

        crudify :'refinery/redirects/redirect',
                :xhr_paging => true

      end
    end
  end
end
