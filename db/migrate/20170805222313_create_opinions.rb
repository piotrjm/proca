class CreateOpinions < ActiveRecord::Migration[5.1]
  def change
    create_table :opinions do |t|
      t.references :project, foreign_key: true
      t.references :user, foreign_key: true
      t.boolean :sec22_rate
      t.text :sec22
      t.boolean :sec23_rate
      t.text :sec23
      t.boolean :sec24_rate
      t.text :sec24
      t.boolean :sec25_rate
      t.text :sec25
      t.boolean :sec28_rate
      t.text :sec28
      t.boolean :sec33_rate
      t.text :sec33
      t.text :sec41
      t.text :sec42
      t.text :sec43
      t.boolean :sec51_rate
      t.text :sec51
      t.text :sec61

      t.timestamps
    end
  end
end
