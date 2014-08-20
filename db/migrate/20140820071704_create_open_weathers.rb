class CreateOpenWeathers < ActiveRecord::Migration
  def change
    create_table :open_weathers do |t|

      t.timestamps
    end
  end
end
