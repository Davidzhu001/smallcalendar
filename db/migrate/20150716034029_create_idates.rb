class CreateIdates < ActiveRecord::Migration
  def change
    create_table :idates do |t|
      t.string :title
      t.text :description
      t.date :start_date
      t.date :ending_date

      t.timestamps null: false
    end
  end
end
