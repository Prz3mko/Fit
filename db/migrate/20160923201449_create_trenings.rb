class CreateTrenings < ActiveRecord::Migration
  def change
    create_table :trenings do |t|
      t.belongs_to :user, index: true
      t.date :date
      t.string :exercise
      t.string :description

      t.timestamps null: false
    end
  end
end
