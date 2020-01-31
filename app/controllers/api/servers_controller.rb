class Api::ServersController < ApplicationController
  before_action :set_api_server, only: [:show, :edit, :update, :destroy]

  # GET /api/servers
  # GET /api/servers.json
  def index
    @api_servers = Api::Server.all
  end

  # GET /api/servers/1
  # GET /api/servers/1.json
  def show
  end

  # GET /api/servers/new
  def new
    @api_server = Api::Server.new
  end

  # GET /api/servers/1/edit
  def edit
  end

  # POST /api/servers
  # POST /api/servers.json
  def create
    @api_server = Api::Server.new(api_server_params)

    respond_to do |format|
      if @api_server.save
        format.html { redirect_to @api_server, notice: 'Server was successfully created.' }
        format.json { render :show, status: :created, location: @api_server }
      else
        format.html { render :new }
        format.json { render json: @api_server.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/servers/1
  # PATCH/PUT /api/servers/1.json
  def update
    respond_to do |format|
      if @api_server.update(api_server_params)
        format.html { redirect_to @api_server, notice: 'Server was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_server }
      else
        format.html { render :edit }
        format.json { render json: @api_server.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/servers/1
  # DELETE /api/servers/1.json
  def destroy
    @api_server.destroy
    respond_to do |format|
      format.html { redirect_to api_servers_url, notice: 'Server was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_server
      @api_server = Api::Server.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_server_params
      params.fetch(:api_server, {})
    end
end
