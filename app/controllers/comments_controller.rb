class CommentsController < ApplicationController
	def index
		#Muestra las películas que hay en la base de datos.
		@comments = Comment.all
	end
   
	def show
		@comment = Comment.find(params[:id])
	end
   
	def new
		@comment = Comment.new
	end
   
	def create
		@comment = Comment.new(comment_params)

		if @comment.save
			redirect_to comments_path, :notice => "Se ha guardado el comentario"
		else
		render "new"
		end
	end
   
	def edit
		@comment = Comment.find(params[:id])	
	end
   
	def update
		@comment = Comment.find(params[:id])
 
		if @comment.update_attributes(comment_params)
		redirect_to comments_path, :notice => "éxito!"
		
		else
		render "edit"
		end

	end
   
	def destroy
		@comment = Comment.find(params[:id])
		@comment.destroy
		redirect_to comments_path, :notice => "Borrado"
    end
  

	private

		def comment_params
			params.require(:comment).permit(:comment)
		end
end
