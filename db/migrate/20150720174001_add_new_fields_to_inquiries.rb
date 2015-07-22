class AddNewFieldsToInquiries < ActiveRecord::Migration
  def change
    add_column :refinery_inquiries_inquiries, :business_name, :string
    add_column :refinery_inquiries_inquiries, :address_1, :string
    add_column :refinery_inquiries_inquiries, :address_2, :string
    add_column :refinery_inquiries_inquiries, :city, :string
    add_column :refinery_inquiries_inquiries, :state, :string
    add_column :refinery_inquiries_inquiries, :zip, :string
    add_column :refinery_inquiries_inquiries, :fax, :string

    add_column :refinery_inquiries_inquiries, :project_date, :string
    add_column :refinery_inquiries_inquiries, :project_type, :string
  end
end
