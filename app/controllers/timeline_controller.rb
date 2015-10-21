class TimelineController < ApplicationController   
    def index
        @blogs = Blog.all.reverse
    end
    
    def write
        Blog.create(content: params[:naeyoung])
        redirect_to :root
    end
    
    def comment
        Comment.create(blog_id: params[:blog_id], msg: params[:comment
        ])
        redirect_to :root
    end
    
    def destroy
        bb = Blog.find(params[:id])
        bb.destroy
        redirect_to :root
    end
    
    def edit
        @blog = Blog.find(params[:id])
    end
    
    def update
        bb = Blog.find(params[:id])
        bb.content = params[:naeyoung]
        bb.save
        redirect_to :root
    end
    
    def comment_destroy
    end
    
    def comment_edit
    end
    
    def comment_update
    end
    
end
