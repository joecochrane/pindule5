class CreateLights < ActiveRecord::Migration
  def change
    create_table :lights do |t|
      t.boolean :available

      t.timestamps
    end
  end
end
