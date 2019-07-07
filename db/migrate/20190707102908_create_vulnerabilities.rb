class CreateVulnerabilities < ActiveRecord::Migration[5.2]
  def change
    create_table :vulnerabilities do |t|
      t.string :title
      t.string :gem
      t.datetime :date

      t.timestamps
    end
  end
end