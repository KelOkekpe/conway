class CreateSurvivors < ActiveRecord::Migration[6.0]
  def change
    create_table :survivors do |t|

      t.timestamps
    end
  end
end
