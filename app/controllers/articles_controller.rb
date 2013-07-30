class ArticlesController < ApplicationController

	def index
		@articles = Article.all
	end	

	def new
		@article = Article.new
	end

	def show
		@article = Article.find(params[:id])
		@comment = Comment.new
		@comment.article_id = @article.id
		@tags = @article.tags

		#how to show a specific article? pass the params and the [:id]
		#what about view? @ symbol = instance variable
	end

	def create
		@article = Article.new(params[:article])
		@article.save
		flash.notice = "Article #{@article.title} successfully created!"


		redirect_to articles_path
	end

	def destroy
		@article = Article.find(params[:id])
		@article.destroy
		
		flash.notice = "Article #{@article.title} successfully deleted!"
		
		redirect_to articles_path
	end

	def edit
		@article = Article.find(params[:id])
		#how to go to edit screen, grab data, then update it, and redirect to the same article
	end

	def update
		@article = Article.find(params[:id])
		@article.update_attributes(params[:article])
		flash.notice = "Article '#{@article.title}' successfully updated!"

		#update auto saves changes

		redirect_to article_path(@article)
	end

	


	

end
