# This migration comes from refinery_categories (originally 2)
class AddSlugToCategories < ActiveRecord::Migration
  def change
    add_column :refinery_categories, :slug, :string
    add_index :refinery_categories, :slug
  end
end