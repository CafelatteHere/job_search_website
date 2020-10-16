class CreateVacancies < ActiveRecord::Migration[6.0]
  def change
    create_table :vacancies do |t|

      t.timestamps
      t.string       :position,        null: false, default: ""
      t.string       :company,         null: false, default: ""
      t.string       :location,        null: false, default: ""
      t.integer      :salary,          null: false, default: 0
      t.text         :description,     null: false
      t.references :user, foreign_key: true
      t.boolean :is_recruiter,      null: false, default: false
    end
  end
end
