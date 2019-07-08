class CreateVulnerabilities < ActiveRecord::Migration[5.2]
  def change
    create_table :vulnerabilities do |t|
      t.string :title
      t.string :rubygem
      t.datetime :date
      t.string :cve

      t.timestamps
    end

    add_index :vulnerabilities, [:cve, :date, :rubygem, :title], unique: true
  end
end
