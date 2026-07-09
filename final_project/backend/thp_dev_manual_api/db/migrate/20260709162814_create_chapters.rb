class CreateChapters < ActiveRecord::Migration[8.1]
  def change
    create_table :chapters do |t|
      t.string :title
      t.integer :module_number
      t.string :category
      t.text :summary
      t.text :content
      t.text :example
      t.text :tips
      t.integer :position

      t.timestamps
    end
  end
end
