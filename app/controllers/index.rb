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
  # params[post].each_key do |key|
  #   key = key.to_sym
  # end
  puts params["post"]
  new_post = Post.create(params["post"])
  puts "#{new_post.id} #{new_post.title}"
  redirect "/post/#{new_post.id}"
end

get '/post/:id' do
  @post = Post.find(params[:id])
  erb :post
end

