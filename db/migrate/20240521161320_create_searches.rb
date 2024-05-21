class CreateSearches < ActiveRecord::Migration[7.1]
  def change
    drop_table :searches if ActiveRecord::Base.connection.table_exists?(:searches)

    create_table :searches do |t|
      t.string :input
      t.timestamps
    end
  end
end
