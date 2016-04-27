class AddEmpToggle < ActiveRecord::Migration
  def up
    add_column :refinery_testimonials, :testimonial_type, :string
  end

  def down
    drop_column :refinery_testimonials, :testimonial_type
  end
end
