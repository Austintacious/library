class ChangeTitleType < ActiveRecord::Migration
  def up
    change_column :books, :title, :string, null: false
  end

  def down
    change_column :books, :title, :string
  end
end
