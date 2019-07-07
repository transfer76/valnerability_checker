class CreateVulnerabilities < ActiveRecord::Migration[5.2]
  def change
    create_table :vulnerabilities do |t|
      t.string :title

      t.timestamps
    end
  end
end
