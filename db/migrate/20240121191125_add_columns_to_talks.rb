class AddColumnsToTalks < ActiveRecord::Migration[7.1]
  def change
    add_column :talks, :title, :string
    add_column :talks, :text, :text
    add_column :talks, :photo, :string
  end
end
