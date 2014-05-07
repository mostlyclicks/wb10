module Refinery
  module Categories
    class Category < Refinery::Core::BaseModel
      extend FriendlyId
      friendly_id :name, :use => [:slugged]
      self.table_name = 'refinery_categories'

      attr_accessible :name, :short_desc, :long_desc, :cat_hero_image_id, :position

      validates :name, :presence => true, :uniqueness => true

      alias_attribute :title, :name
      acts_as_indexed :fields => [:title]

      belongs_to :cat_hero_image, :class_name => '::Refinery::Image'
      has_many :projects, :class_name => Refinery::Projects::Project

    end
  end
end
