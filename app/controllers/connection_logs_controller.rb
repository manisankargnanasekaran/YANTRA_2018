class ConnectionLogsController < ApplicationController
  before_action :set_connection_log, only: [:show, :edit, :update, :destroy]

  # GET /connection_logs
  # GET /connection_logs.json
  def index
    @connection_logs = ConnectionLog.all
  end

  # GET /connection_logs/1
  # GET /connection_logs/1.json
  def show
  end

  # GET /connection_logs/new
  def new
    @connection_log = ConnectionLog.new
  end

  # GET /connection_logs/1/edit
  def edit
  end

  # POST /connection_logs
  # POST /connection_logs.json
  def create
    @connection_log = ConnectionLog.new(connection_log_params)

    respond_to do |format|
      if @connection_log.save
        format.html { redirect_to @connection_log, notice: 'Connection log was successfully created.' }
        format.json { render :show, status: :created, location: @connection_log }
      else
        format.html { render :new }
        format.json { render json: @connection_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /connection_logs/1
  # PATCH/PUT /connection_logs/1.json
  def update
    respond_to do |format|
      if @connection_log.update(connection_log_params)
        format.html { redirect_to @connection_log, notice: 'Connection log was successfully updated.' }
        format.json { render :show, status: :ok, location: @connection_log }
      else
        format.html { render :edit }
        format.json { render json: @connection_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /connection_logs/1
  # DELETE /connection_logs/1.json
  def destroy
    @connection_log.destroy
    respond_to do |format|
      format.html { redirect_to connection_logs_url, notice: 'Connection log was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_connection_log
      @connection_log = ConnectionLog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def connection_log_params
      params.require(:connection_log).permit(:date, :status, :tenant_id, :machine_id)
    end
end
