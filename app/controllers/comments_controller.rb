class CommentsController < ApplicationController
	before_filter :require_login, except: [:create]

	def create
		@comment = Comment.new(params[:comment])
		@comment.article_id = params[:article_id]
		@comment.save
		

		flash.notice = "Comment successfully created!"

		redirect_to article_path(@comment.article)
	end

	def show

	end


end
