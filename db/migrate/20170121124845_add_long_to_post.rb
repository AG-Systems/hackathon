class AddLongToPost < ActiveRecord::Migration
  def change
    add_column :posts, :long, :float
  end
end
