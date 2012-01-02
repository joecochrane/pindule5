class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.string :title
      t.text :dialogue
      t.boolean :pub
      t.boolean :adpub

      t.timestamps
    end
  end
end
