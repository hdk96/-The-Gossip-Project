class CreateGossips < ActiveRecord::Migration[5.2]
  def change
    create_table :gossips do |t|
      t.belongs_to :tag, index: true 

      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
