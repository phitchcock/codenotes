class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.text :description
      t.text :code_sample

      t.timestamps
    end
  end
end
