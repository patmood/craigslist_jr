get '/' do
  @categories = Category.all
  erb :index
end

get '/category/:id' do
  @posts = Category.find(params[:id]).posts.all
  erb :category
end

get '/post/new' do
  erb :new_post
end

post '/post/new' do
  "Hello World"
end

get '/post/:id' do
  @post = Post.find(params[:id])
  erb :post
end

