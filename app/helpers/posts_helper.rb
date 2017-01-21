module PostsHelper
   def post_params
    params.require(:post).permit(:title, :desc, :image)
  end
end
