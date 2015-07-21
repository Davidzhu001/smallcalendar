class AddStatToIdate < ActiveRecord::Migration
  def change
    add_column :idates, :stat, :boolean, :default => false
  end
end
