class CreateViewsDefault < ActiveRecord::Migration[5.2]
  def change
    change_column_default(:websites, :views, 0)
  end
end
