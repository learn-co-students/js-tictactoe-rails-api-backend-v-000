##
## ACTIONS
##

def create
end
def create #1
  @post = Post.create(post_params)
  @post.save
  redirect_to post_path(@post)
end
def create
  Product.create(product_params)
  redirect_to products_path
end
def create #5
  @post = Post.create(post_params)
  @post.save
  render json: @post, status: 201
end


def show
end
def show #2
  @product = Product.find(params[:id])
end
def show #3
@post = Post.find(params[:id])
respond_to do |format|
  format.html { render :show }
  format.json { render json: @post.to_json(only: [:title, :description, :id],
                          include: [author: { only: [:name]}]) }
  end
end
def show #4
  @product = Product.find(params[:id])
  respond_to do |format|
    format.html { render :show }
    format.json { render json: @product.to_json(only: [:name, :description,:inventory, :price, :id])}
  end
end
def show
  @post = Post.find(params[:id])
    #BEFORE using a serializer:
    render json: @post.to_json(only: [:title, :description, :id],
                              include: [author: { only: [:name]}])
     # AFTER USING OUR SERIALIZER
    # render json: @post, status: 200
end
def show
  @product = Product.find(params[:id])
  respond_to do |format|
    format.html { render :show }
    format.json { render json: @product.to_json(only: [:id, :name, :description, :price, :inventory])}
  end
end

def update
end
def update #1
  @post.update(post_params)
  redirect_to post_path(@post)
end
def update# 5
  @post.update(post_params)
  render json: @post, status: 202
end


def index
end
def index #1
  @posts = Post.all
end
def index
  @posts = Post.all
  render json: @posts, status: 200
end


##
## routes
##

#1
Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts
  # get 'posts/:id/body', to: 'posts#body'
  get 'posts/:id/post_data', to: 'posts#post_data'
end

#2

Learn more or give us feedback
Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'home', to: 'static#home'
  resources :orders
  resources :invoices
  resources :products, only: [:index, :new, :create, :show]
  get '/products/:id/description', to: 'products#description'
  get '/products/:id/inventory', to: 'products#inventory'
  get '/products/:id/data', to: 'products#data'
end

#3
Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts, only: [:index, :show, :new, :create, :edit]
  get 'posts/:id/post_data', to: 'posts#post_data'
end

#4

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts, only: [:index, :show, :new, :create, :edit]
  get 'posts/:id/post_data', to: 'posts#post_data'
end

#5
Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'home', to: 'static#home'
  resources :orders
  resources :invoices
  resources :products, only: [:show, :index, :new, :create]
  get '/products/:id/description', to: 'products#description'
  get '/products/:id/inventory', to: 'products#inventory'
  # get '/products/:id/data', to: 'products#data'
end

#6
Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :authors, only: [:show]
  resources :posts, only: [:index, :show, :new, :create, :edit]
  get 'posts/:id/post_data', to: 'posts#post_data'
end

#7
Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'home', to: 'static#home'
  resources :orders
  resources :invoices
  resources :products, only: [:show, :index, :new, :create]
  # get '/products/:id/description', to: 'products#description'
  # get '/products/:id/inventory', to: 'products#inventory'
end
#################
Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  post 'games', to: 'games#create'
  get 'games/:id', to: 'games#show'
  patch '/games/:id', to: 'games#update'
  get '/games', to: 'games#index'
end
