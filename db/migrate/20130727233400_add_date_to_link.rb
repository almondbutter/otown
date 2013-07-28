class AddDateToLink < ActiveRecord::Migration
  def change
  	add_column  :links, :datetime, :string
  end
end
