module Api
  module V1
    class ShiftsController < ApplicationController
      before_action :set_shift, only: [:show, :edit, :update, :destroy]

      # GET /shifts
      # GET /shifts.json
      def index
        #@shifts = Shift.all
        @shifts = Shift.where(tenant_id: current_tenant.id)
        render json: {
            message: 'Your Shift',
            shifttransaction: @shift
          }
      end

      # GET /shifts/1
      # GET /shifts/1.json
      def show
      end

      # GET /shifts/new
      def new
        @shift = Shift.new
      end

      # GET /shifts/1/edit
      def edit
      end

      # POST /shifts
      # POST /shifts.json
      def create
        @shift = Shift.new(shift_params)
        @shift.tenant_id = current_tenant.id
          if @shift.save
            render json: {
              message: 'Shift was successfully Created.',
              shift: @shift
            }
          else
            render json: {message: 'Shift Not Created'}
          end
      end

      # PATCH/PUT /shifts/1
      # PATCH/PUT /shifts/1.jsonShift was successfully updated.
      def update
        if @shift.update(shift_params)
          render json: {
              message: 'Shift was successfully Updated.',
              user: @shift
          }
        else
          render json: {message: 'Shift Not Updated'}
        end        
      end

      # DELETE /shifts/1
      # DELETE /shifts/1.json
      def destroy
        @shift.destroy
        render json: {message: 'Shift was Deleted'}
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_shift
          @shift = Shift.find(params[:id])
        end

        # Never trust parameters from the scary internet, only allow the white list through.
        def shift_params
          params.require(:shift).permit(:working_time, :no_of_shift, :day_start_time, :isactive, :deleted_at, :working_time_dummy, :day_start_time_dummy, :tenant_id)
        end
    end
  end
end