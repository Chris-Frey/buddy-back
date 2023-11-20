class ActivitiesController < ApplicationController
    def index
        activities = Activity.all
        render json: activities
    end
    def create
        activity = Activity.create(activity_params)
        if activity.valid?
            render json: activity
        else
            render json: activity.errors, status: 422
        end
    end
    def update
        activity = Activity.find(params[:id])
        activity.update(activity_params)
        if activity.valid?
            render json: activity
        else
            render json: activity, status: 422
        end
    end

    def destroy
        activity = Activity.find(params[:id])
        activity.delete
        render json: activity
    end


    private
    def activity_params
        params.require(:activity).permit(:category, :activity_name, :activity_photo, :start_time, :duration, :location, :description, :creator_id)
    end
end
