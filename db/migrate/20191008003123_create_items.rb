class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
			t.string :name
			t.integer :type, default: 0
			t.string :description
			t.decimal :price, default: 0.0
      t.timestamps
    end
  end
end
