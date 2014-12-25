class CreateSuggests < ActiveRecord::Migration
  def change
    create_table :suggests do |t|
      t.string :name
      t.string :mobile
      t.text :content

      t.timestamps
    end
  end
end
