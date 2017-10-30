class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :image_url
      t.string :description
      t.string :link_to_project
      t.integer :user_id


      t.timestamps
    end
  end
end
