class AddWordAndCountToAnalytics < ActiveRecord::Migration[7.1]
  def change
    add_column :analytics, :word, :string
    add_column :analytics, :count, :integer
  end
end
