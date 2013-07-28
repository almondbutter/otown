class AddLocationToLink < ActiveRecord::Migration
  def change
  	add_column :links, :location, :string
  end
end
