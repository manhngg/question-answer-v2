class CreateTests < ActiveRecord::Migration[5.2]
  def change
    create_table :tests do |t|
      t.text :text
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

# rails g model Test text:text user:references