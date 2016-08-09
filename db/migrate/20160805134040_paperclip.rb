class Paperclip < ActiveRecord::Migration
    def up
      change_table :posts do |t|
      t_attachment :images
    end
  end

    def down
      remove_attachment :posts, :image
    end
end
