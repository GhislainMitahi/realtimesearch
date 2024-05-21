class CreateArticles < ActiveRecord::Migration[7.1]
  def change
    drop_table :articles if ActiveRecord::Base.connection.table_exists?(:articles)

    create_table :articles do |t|
      t.string :title, null: false
      t.text :content, null: false
      t.timestamps
    end
  end
end
