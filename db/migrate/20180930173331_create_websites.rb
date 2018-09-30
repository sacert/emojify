class CreateWebsites < ActiveRecord::Migration[5.2]
  def change
    create_table :websites do |t|
      t.string :url
      t.string :blot
      t.integer :views

      t.timestamps
    end
  end
end
