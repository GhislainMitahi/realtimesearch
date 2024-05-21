class AddInputToSearches < ActiveRecord::Migration[7.1]
  def change
    add_column :searches, :input, :string
  end
end
