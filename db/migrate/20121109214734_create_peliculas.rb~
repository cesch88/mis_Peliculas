class CreatePeliculas < ActiveRecord::Migration
  def up
    create_table 'peliculas' do |t|
      t.string 'titulo'
      t.string 'calificacion'
      t.text 'descripcion'
      t.datetime 'fecha_estreno'
      t.timestamps
    end
  end

  def down
    drop_table 'peliculas'
  end
end

