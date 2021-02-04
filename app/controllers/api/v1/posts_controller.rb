class Api::V1::PostsController < ApplicationController
	
	def index
		@posts = Post.all
		render json: @posts
	end
	def show
		@post = Post.find(params[:id])
		render json: @post
	end
	def create
		@post = Post.new(post_params)
		if @post.save
			render json: @post
		else
			render error: { error: 'unable to create post.'},status: 400
		end
	end
	def update
		@post = Post.find(params[:id])
		if @post
			@post.update(post_params)
			render json: { message: 'post successfully updated.' }, status: 200
		else
			render json: { error: 'unable to update post' }, status: 400
		end
	end

	def destroy
		@post = Post.find(params[:id])
		if @post
			@post.destroy
			render json: { message: 'post successfully deleted.'}, status: 200
		else
			render json: { error: 'unable to delete post' }, status: 400
		end
	end

	private
	def post_params
		params.require(:post).permit(:username, :password)
	end
end
