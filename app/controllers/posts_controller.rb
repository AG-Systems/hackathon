class PostsController < ApplicationController
    before_filter :authenticate_user!, :only => [:new]
    include PostsHelper
    def index
        @posts = Post.all
    end
    
    def show
    end
    
    def new
        @post = Post.new
    end
    
    def create
        @post = Post.new(post_params)
        @post.save
    
        # redirect_to job_path(@job)
        redirect_to root_path
    end
end
