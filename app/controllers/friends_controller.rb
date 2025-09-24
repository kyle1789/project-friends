class FriendsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_friend, only: %i[ show edit update destroy ]
  before_action :correct_user, only: %i[ show edit update destroy ]

  # GET /friends
  def index
    @friends = current_user.friends
  end

  # GET /friends/1
  def show
  end

  # GET /friends/new
  def new
    @friend = current_user.friends.build
  end

  # GET /friends/1/edit
  def edit
  end

  # POST /friends
  def create
    @friend = current_user.friends.build(friend_params)

    if @friend.save
      redirect_to @friend, notice: "Friend was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /friends/1
  def update
    if @friend.update(friend_params)
      redirect_to @friend, notice: "Friend was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /friends/1
  def destroy
    @friend.destroy
    redirect_to friends_path, notice: "Friend was successfully destroyed.", status: :see_other
  end

  private

    def set_friend
      @friend = Friend.find(params[:id])
    end

    def correct_user
      @friend = current_user.friends.find_by(id: params[:id])
      redirect_to friends_path, notice: "Not authorized" if @friend.nil?
    end

    def friend_params
      params.require(:friend).permit(:first_name, :second_name, :twitter, :email, :phone_num)
    end
end
