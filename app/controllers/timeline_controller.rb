class TimelineController < ApplicationController
    before_action :authenticate_user!, except: :index
    def index
        @blogs = Blog.all.reverse
    end
    
    def page
        @page = Blog.where(user_id: params[:id])
    end
    
    def write
        Blog.create(user_id: current_user.id, content: params[:naeyong])
        redirect_to :root
    end
    
    def comment
        Comment.create(user_id: current_user.id, blog_id: params[:blog_id], msg: params[:comment
        ])
        redirect_to :root
    end
    
    def destroy
        w = Blog.find(params[:id])
        w.destroy
        redirect_to :root
    end
    
    def edit
        @blog = Blog.find(params[:id])
    end
    
    def update
        w = Blog.find(params[:id])
        w.content = params[:naeyong]
        w.save
        redirect_to :root
    end
    
    def comment_destroy
        v = Comment.find(params[:id])
        v.destroy
        redirect_to :root
    end
    
    def comment_edit
        @comment = Comment.find(params[:id])
    end
    
    def comment_update
        v = Comment.find(params[:id])
        v.msg = params[:comment]
        v.save
        redirect_to :root
    end
    
end
