class AddThemeToTalks < ActiveRecord::Migration[7.1]
  def change
    add_column :talks, :theme, :string
  end
end
