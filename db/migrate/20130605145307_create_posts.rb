class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title, :null => false
      t.text :content

      t.timestamps
    end
  end
end
