class AddOtherProjTypeToInquiries < ActiveRecord::Migration
  def change
    add_column :refinery_inquiries_inquiries, :other_project_type, :string
  end
end
