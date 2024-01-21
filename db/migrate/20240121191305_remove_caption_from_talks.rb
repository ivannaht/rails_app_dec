class RemoveCaptionFromTalks < ActiveRecord::Migration[7.1]
  def change
    remove_column :talks, :caption, :string
  end
end
