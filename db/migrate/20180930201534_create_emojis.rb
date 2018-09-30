class CreateEmojis < ActiveRecord::Migration[5.2]
  def change
    create_table :emojis do |t|
      t.string :code
      t.string :char
      t.string :name
      t.string :keywords

      t.timestamps
    end
  end
end
