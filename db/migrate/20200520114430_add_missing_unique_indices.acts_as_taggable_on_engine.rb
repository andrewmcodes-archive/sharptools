# This migration comes from acts_as_taggable_on_engine (originally 2)
if ActiveRecord.gem_version >= Gem::Version.new("5.0")
  class AddMissingUniqueIndices < ActiveRecord::Migration[4.2]; end
else
  class AddMissingUniqueIndices < ActiveRecord::Migration; end
end
AddMissingUniqueIndices.class_eval do
  disable_ddl_transaction!

  def self.up
    add_index ActsAsTaggableOn.tags_table, :name, unique: true, algorithm: :concurrently

    remove_index ActsAsTaggableOn.taggings_table, :tag_id if index_exists?(ActsAsTaggableOn.taggings_table, :tag_id)
    remove_index ActsAsTaggableOn.taggings_table, name: "taggings_taggable_context_idx"
    add_index ActsAsTaggableOn.taggings_table,
      [:tag_id, :taggable_id, :taggable_type, :context, :tagger_id, :tagger_type],
      unique: true, name: "taggings_idx", algorithm: :concurrently
  end

  def self.down
    remove_index ActsAsTaggableOn.tags_table, :name

    remove_index ActsAsTaggableOn.taggings_table, name: "taggings_idx"

    add_index ActsAsTaggableOn.taggings_table, :tag_id unless index_exists?(ActsAsTaggableOn.taggings_table, :tag_id)
    add_index ActsAsTaggableOn.taggings_table, [:taggable_id, :taggable_type, :context], name: "taggings_taggable_context_idx"
  end
end

def do_bundle
  Bundler.with_unbundled_env { run "bundle install" }
end

run "bundle add acts-as-taggable-on"
do_bundle
rails_command("acts_as_taggable_on_engine:install:migrations")
if yes?("Are you using the Strong Migrations gem? [y/n]")
  puts "The Strong Migrations gem will flag these migrations..."
  if yes?("Would you like us to try to run them anyway so you can see the errors? [y/n]")
    rails_command("db:migrate")
  end
else
  rails_command("db:migrate")
end

puts "\n\n👋 That's all for now, ActsAsTaggableOn is setup and ready to be added to a model!"
puts "📝- add `acts_as_taggable_on :column_name` to models you wish to utilize tagging."
puts "For more information see the Usage Instructions: https://railsbytes.com/public/templates/V2GsQG"
