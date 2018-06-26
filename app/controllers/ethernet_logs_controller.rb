class EthernetLogsController < ApplicationController
  before_action :set_ethernet_log, only: [:show, :edit, :update, :destroy]

  # GET /ethernet_logs
  # GET /ethernet_logs.json
  def index
    @ethernet_logs = EthernetLog.all
  end

  # GET /ethernet_logs/1
  # GET /ethernet_logs/1.json
  def show
  end

  # GET /ethernet_logs/new
  def new
    @ethernet_log = EthernetLog.new
  end

  # GET /ethernet_logs/1/edit
  def edit
  end

  # POST /ethernet_logs
  # POST /ethernet_logs.json
  def create
    @ethernet_log = EthernetLog.new(ethernet_log_params)

    respond_to do |format|
      if @ethernet_log.save
        format.html { redirect_to @ethernet_log, notice: 'Ethernet log was successfully created.' }
        format.json { render :show, status: :created, location: @ethernet_log }
      else
        format.html { render :new }
        format.json { render json: @ethernet_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ethernet_logs/1
  # PATCH/PUT /ethernet_logs/1.json
  def update
    respond_to do |format|
      if @ethernet_log.update(ethernet_log_params)
        format.html { redirect_to @ethernet_log, notice: 'Ethernet log was successfully updated.' }
        format.json { render :show, status: :ok, location: @ethernet_log }
      else
        format.html { render :edit }
        format.json { render json: @ethernet_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ethernet_logs/1
  # DELETE /ethernet_logs/1.json
  def destroy
    @ethernet_log.destroy
    respond_to do |format|
      format.html { redirect_to ethernet_logs_url, notice: 'Ethernet log was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ethernet_log
      @ethernet_log = EthernetLog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ethernet_log_params
      params.require(:ethernet_log).permit(:date, :status, :machine_id, :tenant_id)
    end
end
