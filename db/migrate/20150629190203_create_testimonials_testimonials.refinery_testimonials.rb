# This migration comes from refinery_testimonials (originally 1)
class CreateTestimonialsTestimonials < ActiveRecord::Migration

  def up
    create_table :refinery_testimonials do |t|
      t.string :title
      t.text :testimonial_text
      t.integer :image_id
      t.string :client
      t.string :company
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-testimonials"})
    end

    drop_table :refinery_testimonials

  end

end
