class AddUserRefToIdates < ActiveRecord::Migration
  def change
    add_reference :idates, :user, index: true, foreign_key: true
  end
end
