class CreatePublishes < ActiveRecord::Migration[6.1]
  def change
    create_table :publishes do |t|
      t.references :author, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true

      t.timestamps
    end
  end
end
