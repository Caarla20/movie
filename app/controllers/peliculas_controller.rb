class PeliculasController < ApplicationController

	def index  
		#Muestra las películas que hay en la base de datos.
		@peliculas = Pelicula.all
	end
   
	def show
		@pelicula = Pelicula.find(params[:id])
	end
   
	def new
		@pelicula = Pelicula.new
	end
   
	def create
		@pelicula = Pelicula.new(peli_params)

		if @pelicula.save
			redirect_to peliculas_path, :notice => "Se ha guardado la pelicula"
		else
		render "new"
		end
	end
   
	def edit
		@pelicula = Pelicula.find(params[:id])	
	end
   
	def update
		@pelicula = Pelicula.find(params[:id])
 
		if @pelicula.update_attributes(peli_params)
			redirect_to peliculas_path, :notice => "éxito!" 
		else
			render "edit"
		end 
	end
   
	def destroy
		@pelicula = Pelicula.find(params[:id])
		@pelicula.destroy
		redirect_to peliculas_path, :notice => "Borrado"
    end
  

	private 
		def peli_params
			params.require(:pelicula).permit(:name, :main_actor, :stars, :year, :url, :director)
		end
end
