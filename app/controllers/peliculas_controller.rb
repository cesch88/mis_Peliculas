class PeliculasController < ApplicationController
  def index
    @peliculas = Pelicula.all
  end
  
  def show
      id = params[:id]
      @pelicula = Pelicula.find(id)
  end
  
  def new
  end
  
  def create
      @pelicula = Pelicula.create!(params[:pelicula])
      flash[:notice] = "#{@pelicula.titulo} se creo!"
      redirect_to peliculas_path
  end

  
  
  def edit
      @pelicula = Pelicula.find params[:id]
  end

  def update
      @pelicula = Pelicula.find params[:id]
      @pelicula.update_attributes!(params[:pelicula])
      flash[:notice] = "#{@pelicula.titulo} fue actualizada!!"
      redirect_to pelicula_path(@pelicula)
  end
  
  def destroy
      @pelicula = Pelicula.find params[:id]
      @pelicula.destroy
      flash[:notice] = "La pelicula #{@pelicula.titulo} fue destruida!!"
      redirect_to peliculas_path
  end

 
  
end
