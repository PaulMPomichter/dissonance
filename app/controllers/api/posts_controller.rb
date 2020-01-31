class Api::PostsController < ApplicationController
  before_action :set_api_post, only: [:show, :edit, :update, :destroy]

  # GET /api/posts
  # GET /api/posts.json
  def index
    @api_posts = Api::Post.all
  end

  # GET /api/posts/1
  # GET /api/posts/1.json
  def show
  end

  # GET /api/posts/new
  def new
    @api_post = Api::Post.new
  end

  # GET /api/posts/1/edit
  def edit
  end

  # POST /api/posts
  # POST /api/posts.json
  def create
    @api_post = Api::Post.new(api_post_params)

    respond_to do |format|
      if @api_post.save
        format.html { redirect_to @api_post, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @api_post }
      else
        format.html { render :new }
        format.json { render json: @api_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/posts/1
  # PATCH/PUT /api/posts/1.json
  def update
    respond_to do |format|
      if @api_post.update(api_post_params)
        format.html { redirect_to @api_post, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_post }
      else
        format.html { render :edit }
        format.json { render json: @api_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/posts/1
  # DELETE /api/posts/1.json
  def destroy
    @api_post.destroy
    respond_to do |format|
      format.html { redirect_to api_posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_post
      @api_post = Api::Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_post_params
      params.fetch(:api_post, {})
    end
end
