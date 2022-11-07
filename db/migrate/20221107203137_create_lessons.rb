class CreateLessons < ActiveRecord::Migration[7.0]
  def change
    create_table :lessons do |t|
      t.string :name, null: false
      t.integer :lesson_type, null: false
      t.string :author, null: false
      t.string :source, null: false
      t.string :duration, null: false
      t.references :section, null: false, foreign_key: true

      t.timestamps
    end
  end
end
