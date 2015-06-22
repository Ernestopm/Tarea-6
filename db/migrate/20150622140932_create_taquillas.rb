class CreateTaquillas < ActiveRecord::Migration
  def change
    create_table :taquillas do |t|
      t.string :pelicula
      t.text :valoracion
      t.text :comentario

      t.timestamps null: false
    end
  end
end
