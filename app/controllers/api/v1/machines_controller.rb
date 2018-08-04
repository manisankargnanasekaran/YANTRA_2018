module Api
  module V1  
    class MachinesController < ApplicationController
       skip_before_action :authenticate_request, only: %i[index]
      before_action :set_machine, only: [:show, :edit, :update, :destroy]

      # GET /machines
      # GET /machines.json
      def index
        #@machines = Machine.where(tenant_id: current_tenant.id)
        @machines = Machine.all
        render json: @machines
      end

      # GET /machines/1
      # GET /machines/1.json
      def show
      end

      # GET /machines/new
      def new
        @machine = Machine.new
      end

      # GET /machines/1/edit
      def edit
      end

      # POST /machines
      # POST /machines.json
      def create
        @machine = Machine.new(machine_params)
        if @machine.save
          render json: {
            message: 'Machine was successfully Created.',
            machine: @machine
          }
        else
          render json: {message: 'Machine Not Created'}
        end
      end

      # PATCH/PUT /machines/1
      # PATCH/PUT /machines/1.json
      def update
        if @machine.update(machine_params)
          render json: {
            message: 'Machine was successfully Updated',
            machine: @machine
          }
        else
          render json: {message: 'Machine Not Updated'}
        end
      end

      # DELETE /machines/1
      # DELETE /machines/1.json
      def destroy
        @machine.destroy
        render json: {message: 'Machine Not Deleted'}
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_machine
          @machine = Machine.find(params[:id])
        end

        # Never trust parameters from the scary internet, only allow the white list through.
        def machine_params
          params.require(:machine).permit(:machine_name, :machine_model, :machine_serial_no, :machine_type, :isactive, :deleted_at, :machine_ip, :unit, :device_id, :tenant_id)
        end
    end
  end
end