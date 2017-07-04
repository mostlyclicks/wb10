module Refinery
  module Redirects
    class Redirect < Refinery::Core::BaseModel
      self.table_name = 'refinery_redirects'

      attr_accessible :title, :description, :position

      validates :title, :presence => true, :uniqueness => true
    end
  end
end
