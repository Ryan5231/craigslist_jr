get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/categories' do
  erb :categories
end

get '/post/new' do
  erb :new_post
end

post '/post/create' do
  new_post = Post.create(params)
  redirect to( "post/#{new_post.id}" )
end

get '/category/post/:id' do
  puts "random,!"
  @post = Post.find(params[:id])
  erb :post
end

get '/post/:id' do
  puts "random,!"
  @post = Post.find(params[:id])
  erb :post
end

get '/category/:id' do
  @category = Category.find(params[:id])
  erb :category
end
