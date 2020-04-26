class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.boolean :pour
      t.boolean :contre

      t.timestamps
    end
  end
end
