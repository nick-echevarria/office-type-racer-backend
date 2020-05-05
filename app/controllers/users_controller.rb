class UsersController < ApplicationController
    def index 
        users = User.all
        render json: users, except: [:created_at, :updated_at]
    end

    def show
        user = User.find_by(id: params[:id])
        render json: user, except: [:created_at, :updated_at]
    end

    def create
            user = User.create(username: params[:username])        
            # if @user.valid?
            render json: user, except: [:created_at, :updated_at]
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
