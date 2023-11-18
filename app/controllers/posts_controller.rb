class PostsController < ApplicationController
    before_action :authenticate_user!

    def index
    end

    def new
        @post = current_user.posts.build
    end

    def create
        @post = current_user.posts.build(allowed_params)
    end


    private

    def allowed_params
        params.require(:post).permit(:title, :body, :user_id)
    end
end