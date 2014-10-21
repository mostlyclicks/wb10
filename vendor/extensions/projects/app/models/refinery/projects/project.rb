module Refinery
  module Projects
    class Project < Refinery::Core::BaseModel
      extend FriendlyId
      friendly_id :title, :use => [:slugged]
      self.table_name = 'refinery_projects'
      default_scope order('position ASC')

      attr_accessible :title, :project_status, :pdf_link_id, :hero_image_id, :excerpt, :description, :testimonial, :category_id, :position

      validates :title, :presence => true, :uniqueness => true

      belongs_to :hero_image, :class_name => '::Refinery::Image'

      belongs_to :pdf_link, :class_name => '::Refinery::Resource'

      belongs_to :category, :class_name => Refinery::Categories::Category
      has_many_page_images

      acts_as_indexed :fields => [:title, :description]
    end
  end
end
