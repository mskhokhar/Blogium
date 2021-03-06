json.posts do 
    @posts.each do |post|
        json.set! post.id do
            json.partial! "show", post: post
        end
        
    end
end
json.popularPosts do 
    @popular_posts.each do |post|
        json.set! post.id do
            json.partial! "show", post: post
        end
    end
end
json.editorPicks do 
    @editor_picks.each do |post|
        json.set! post.id do
            json.partial! "show", post: post
        end
    end
end
json.users do 
    @posts.each do |post|
        json.set! post.author.id do
            json.partial! "/api/users/show", user: post.author
        end
    end
end