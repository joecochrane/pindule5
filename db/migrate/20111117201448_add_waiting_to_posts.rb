class AddWaitingToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :waiting, :boolean
  end
end
