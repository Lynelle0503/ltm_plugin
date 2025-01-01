module Ltm
  class TagsController < ApplicationController
    def index
      @tags = Tag.all
    end
    def new
      @tag = Tag.new
      @users = User.all
    end
    def create
      @tag = Tag.create(tag_params)
      if @tag.save
        redirect_to tags_path, notice: "Tag created"
      else
        render :new
      end
    end

    private
    def tag_params
      params.require(:tag).permit(:name, :ltm_user)
    end
  end
end
