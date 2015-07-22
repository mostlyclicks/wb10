Refinery::Inquiries::Inquiry.class_eval do
  attr_accessible :business_name, :address_1, :address_2, :city, :state, :zip, :fax, :project_date, :project_type, :other_project_type
end
