class Api::ChannelsController < ApplicationController
  before_action :set_api_channel, only: [:show, :edit, :update, :destroy]

  # GET /api/channels
  # GET /api/channels.json
  def index
    @api_channels = Api::Channel.all
  end

  # GET /api/channels/1
  # GET /api/channels/1.json
  def show
  end

  # GET /api/channels/new
  def new
    @api_channel = Api::Channel.new
  end

  # GET /api/channels/1/edit
  def edit
  end

  # POST /api/channels
  # POST /api/channels.json
  def create
    @api_channel = Api::Channel.new(api_channel_params)

    respond_to do |format|
      if @api_channel.save
        format.html { redirect_to @api_channel, notice: 'Channel was successfully created.' }
        format.json { render :show, status: :created, location: @api_channel }
      else
        format.html { render :new }
        format.json { render json: @api_channel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/channels/1
  # PATCH/PUT /api/channels/1.json
  def update
    respond_to do |format|
      if @api_channel.update(api_channel_params)
        format.html { redirect_to @api_channel, notice: 'Channel was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_channel }
      else
        format.html { render :edit }
        format.json { render json: @api_channel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/channels/1
  # DELETE /api/channels/1.json
  def destroy
    @api_channel.destroy
    respond_to do |format|
      format.html { redirect_to api_channels_url, notice: 'Channel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_channel
      @api_channel = Api::Channel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_channel_params
      params.fetch(:api_channel, {})
    end
end
