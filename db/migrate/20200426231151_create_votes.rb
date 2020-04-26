class CreateVotes < ActiveRecord::Migration[6.0]
  def change
    create_table :votes do |t|
      t.boolean :pour
      t.boolean :contre

      t.timestamps
    end
  end
end
