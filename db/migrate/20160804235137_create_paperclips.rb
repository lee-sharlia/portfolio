class CreatePaperclips < ActiveRecord::Migration
  def change
    create_table :paperclips do |t|
      t.string :image

      t.timestamps null: false
    end
  end
end
