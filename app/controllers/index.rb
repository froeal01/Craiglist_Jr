get '/' do
  @categories=Category.all
  erb :index
end

get '/create/:cat_id' do
  @category = Category.find(params[:cat_id])

  erb :create_post
end

get '/categories/:id' do
   @category = Category.find(params[:id])
   @cat_id = params[:id]
   @cat_name = @category.name
   @posts = @category.posts
   erb :single_cat
end

get '/categories/:cat_id/posts/:post_id' do
  @post = Post.find(params[:post_id])
  erb :post_page
end

post '/create/:cat_id/' do
  @cat_id = params[:cat_id] 
  @category = Category.find(params[:cat_id])
  new_post = Post.create(params[:post])
  @category.posts << new_post
  erb :post_created
end

post '/categories/:cat_id/posts/:post_id/delete' do
  @post = Post.find(params[:post_id])
  @post.destroy
  redirect '/'
end

get '/categories/:cat_id/posts/:post_id/edit' do
  @post = Post.find(params[:post_id])

erb :edit_page
end  

post '/categories/:cat_id/posts/:post_id/edit/finish' do
  @post = Post.find(params[:post_id])
  @post.update_attributes(params[:post])
  redirect '/'
end
