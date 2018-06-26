module Api
  module V1
    class AlarmsController < ApplicationController
      before_action :set_alarm, only: [:show, :edit, :update, :destroy]

      # GET /alarms
      # GET /alarms.json
      def index
        #@alarms = Alarm.all
        @alarms = Alarm.where(machine_id:Tenant.find(current_tenant.id).machines.ids).distinct(:alarm_message).order("updated_at DESC").where('updated_at > ?', 3.days.ago)
        render json: @alarms
      end

      # GET /alarms/1
      # GET /alarms/1.json
      def show
      end

      # GET /alarms/new
      def new
        @alarm = Alarm.new
      end

      # GET /alarms/1/edit
      def edit
      end

      # POST /alarms
      # POST /alarms.json
      def create
        @alarm = Alarm.new(alarm_params)
          if @alarm.save
           render json: {
             message: 'Alarm was successfully created.',
             alarm: @alarm
           }
          else
            render json: {
             message: "Alarm does't created"
            }
          end
      end

      # PATCH/PUT /alarms/1
      # PATCH/PUT /alarms/1.json
      def update
        if @alarm.update(alarm_params)
          render json: {
           message: 'Alarm was successfully updated.',
           alarm: @alarm
          }
        else
          render json: {
           message: 'Alarm  updated.',
           alarm: @alarm
          }
        end    
      end

      # DELETE /alarms/1
      # DELETE /alarms/1.json
      def destroy
        @alarm.destroy
        render json: {message: 'Alarm Not Deleted'}
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_alarm
          @alarm = Alarm.find(params[:id])
        end

        # Never trust parameters from the scary internet, only allow the white list through.
        def alarm_params
          params.require(:alarm).permit(:alarm_type, :alarm_number, :alarm_message, :emergency, :deleted_at, :machine_id)
        end
    end
  end
end