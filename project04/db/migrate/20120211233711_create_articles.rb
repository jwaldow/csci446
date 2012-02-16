class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :author_name
      t.text :body
      t.string :creation_date

      t.timestamps
    end
  end
end
