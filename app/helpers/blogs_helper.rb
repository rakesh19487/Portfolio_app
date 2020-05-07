module BlogsHelper
    def blog_status_color(blog)
        if blog.published?
           "font-icon-publish"
        end    
    end     
end
