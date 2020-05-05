class EventsController < ApplicationController
    def index
        @events = Event.all
        render json: @events, include: :events
      end

      def show
        @event = Event.find(params[:id])
        render json: @event, include: :events
      end

      def create
        @event = Event.create(
            event: params[:event],
            location: params[:location],
            start_time: params[:start_time],
            end_time: params[:end_time],
            calendar_id: params[:calendar_id]
            # references: params[:references]
        )
        render json: @event
      end

      def update
        @event.update(
            event: params[:event],
            location: params[:location],
            start_time: params[:start_time],
            end_time: params[:end_time],
            references: params[:references]
        )
        render json: @event, include: :events
      end

      def destroy
        @event.destroy
        render json: {message: "You have successfully destroyed the event"}
      end
end
