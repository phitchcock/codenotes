class CreateGemComments < ActiveRecord::Migration
  def change
    create_table :gem_comments do |t|
      t.string :name
      t.text :description
      t.text :code_sample

      t.timestamps
    end
  end
end
