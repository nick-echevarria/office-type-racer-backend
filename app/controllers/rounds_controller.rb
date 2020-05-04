class RoundsController < ApplicationController
    def index 
        rounds = Round.all
        render json: rounds, include: [:user, :quote], except:[:created_at, :updated_at]
    end

    def show
        round = Round.find_by(id: params[:id])
        render json: round, include: [:user, :quote], except: [:user_id, :quote_id,:created_at, :updated_at]
    end
end
