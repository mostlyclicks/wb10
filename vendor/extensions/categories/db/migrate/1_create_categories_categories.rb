class CreateCategoriesCategories < ActiveRecord::Migration

  def up
    create_table :refinery_categories do |t|
      t.string :name
      t.text :short_desc
      t.text :long_desc
      t.integer :cat_hero_image_id
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-categories"})
    end

    drop_table :refinery_categories

  end

end
