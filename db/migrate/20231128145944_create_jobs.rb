class CreateJobs < ActiveRecord::Migration[7.1]
  def change
    create_table :jobs do |t|
      t.string :position
      t.text :description
      t.text :requirements
      t.string :contact_company
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
