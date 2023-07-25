class UserActivitiesController < ApplicationController
    def index
        user_activities = UserActivity.all 
        render json: user_activities
    end
    def create 
        user_activity = UserActivity.create(user_activity_params)
        if user_activity.valid?
            render json: user_activity
        else 
            render json: user_activity.errors, status: 422
        end
    end
    def destroy 
        user_activity = UserActivity.find(params[:id])
        user_activity.delete
        render json: user_activity
    end

    private 
    def user_activity_params
        params.require(:user_activity).permit(:activity_id, :user_id)
    end
end
