class CreateAnalytics < ActiveRecord::Migration[7.1]
  def change
    create_table :analytics do |t|

      t.timestamps
    end
  end
end
