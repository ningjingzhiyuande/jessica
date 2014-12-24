class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :title
      t.string :en_title
      t.string :type
      t.string :info
      t.text :content
      t.string :image
      t.text :url
      t.integer :position

      t.timestamps
    end
  end
end
