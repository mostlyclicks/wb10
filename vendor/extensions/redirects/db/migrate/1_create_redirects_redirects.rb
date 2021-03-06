class CreateRedirectsRedirects < ActiveRecord::Migration

  def up
    create_table :refinery_redirects do |t|
      t.string :title
      t.text :description
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-redirects"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/redirects/redirects"})
    end

    drop_table :refinery_redirects

  end

end
