class CreateAnalytics < ActiveRecord::Migration[7.1]
  def change
    drop_table :analytics if ActiveRecord::Base.connection.table_exists?(:analytics)

    create_table :analytics do |t|
      t.string :word, null: false
      t.integer :count, default: 1, null: false
      t.timestamps
    end
  end
end
