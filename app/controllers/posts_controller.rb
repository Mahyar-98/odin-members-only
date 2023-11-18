class PostsController < ApplicationController

    before_action :authenticate_user!

    def index
    end

    def new
    end

    def create
    end

    private
    def allowed_params
    end
end