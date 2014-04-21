module Refinery
  module Categories
    class Category < Refinery::Core::BaseModel
      self.table_name = 'refinery_categories'

      attr_accessible :name, :short_desc, :long_desc, :cat_hero_image_id, :position

      validates :name, :presence => true, :uniqueness => true

      belongs_to :cat_hero_image, :class_name => '::Refinery::Image'
    end
  end
end
