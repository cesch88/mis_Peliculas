# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

varias_peliculas =[{:titulo=>'Aladin', :calificacion=>'G', :fecha_estreno=>'10-nov-1992'},{:titulo=>'Jinetes', :calificacion=>'G', :fecha_estreno=>'10-oct-1998'},{:titulo=>'Todos', :calificacion=>'PG-15', :fecha_estreno=>'1-feb-1992'},{:titulo=>'Nadie', :calificacion=>'PG-13', :fecha_estreno=>'14-jun-2005'}]

Pelicula.send(:attr_accessible, :titulo, :calificacion, :fecha_estreno)
varias_peliculas.each do | pelicula |  
Pelicula.create!(pelicula)
end

