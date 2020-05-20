class CreateResources < ActiveRecord::Migration[6.0]
  def change
    create_table :resources do |t|
      t.string :title, null: false
      t.string :link
      t.string :repository
      t.bigint :user_id

      t.timestamps
    end

    add_index :resources, [:title, :link, :repository]
  end
end
