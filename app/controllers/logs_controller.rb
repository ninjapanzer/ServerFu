class LogsController < ApplicationController

	def create_server_log
		@server = Server.find params[:id]
		@log = @server.server_logs.build params[:server_log]
    @log.save
    respond_to do |format|
      format.html { render 'logs/index' }
      format.json { render json: @server }
    end
	end

	def new_server_log
    @server = Server.find params[:id]
    @log = @server.server_logs.build
    respond_to do |format|
      format.html { render 'logs/new' }
      format.json { render json: @log }
    end
  end

  def index
    @server = Server.find params[:id]
    respond_to do |format|
      format.html { render 'logs/index' }
      format.json { render json: @server }
    end
  end

end