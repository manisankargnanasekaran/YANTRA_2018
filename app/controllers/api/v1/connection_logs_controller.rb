module Api
  module V1      
    class ConnectionLogsController < ApplicationController
      before_action :set_connection_log, only: [:show, :edit, :update, :destroy]

      # GET /connection_logs
      # GET /connection_logs.json
      def index
        #@connection_logs = ConnectionLog.all
        @connection_logs = ConnectionLog.where(tenant_id: current_tenant.id).last(10)
        rende json: @connection_logs
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
        if @connection_log.save
          render json: {
            message: 'connection_log was successfully Created.',
            user: @connection_log
          }
        else
          render json: {message: 'connection_log Not Created'}
        end
      
      end

      # PATCH/PUT /connection_logs/1
      # PATCH/PUT /connection_logs/1.json
      def update 
        if @connection_log.update(connection_log_params)
          render json: {
          message: 'connection_log was successfully update.',
          user: @connection_log
        }
        else
          render json: {message: 'connection_log Not Created'}
        end
      end

      # DELETE /connection_logs/1
      # DELETE /connection_logs/1.json
      def destroy
        @connection_log.destroy
        render json: {message: 'connection_log Not Created'}
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
  end
end