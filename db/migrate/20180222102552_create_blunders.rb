class CreateBlunders < ActiveRecord::Migration[5.2]
  def change
    create_table :blunders do |t|
      t.text :description

      t.timestamps
    end
  end
end
