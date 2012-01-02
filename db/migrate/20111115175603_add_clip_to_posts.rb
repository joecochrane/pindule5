class AddClipToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :clip, :text
  end
end
