class RoundsController < ApplicationController
    def index 
        rounds = Round.all
        render json: rounds, include: [:user, :quote], except:[:created_at, :updated_at]
    end

    def show
        round = Round.find_by(id: params[:id])
        render json: round, include: [:user, :quote], except: [:user_id, :quote_id,:created_at, :updated_at]
    end

    def create
        round = Round.create(user_id: params[:user_id], quote_id: params[:quote_id], score: params[:score], completion_time: params[:completion_time])        
        # if @user.valid?
        render json: round, except: [:created_at, :updated_at]
        # else 
        #     flash[:errors] = @user.errors.full_messages
        #     render json: user
        # end

        # @user = User.new(_params)
        # if @user.save
        #     render json: user, except: [:created_at, :updated_at]
        # else
        #     flash[:errors] = @user.errors.full_messages
        #     render json: user, except: [:created_at, :updated_at]
        # end        
    end
end
