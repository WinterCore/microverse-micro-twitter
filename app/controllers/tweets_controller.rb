class TweetsController < ApplicationController
  include TrendsHelper

  before_action :set_tweet, only: %i[show edit update destroy]
  before_action :authenticate_user!, except: %i[index show]
  before_action :authorize_modification, except: %i[index show new create]

  # GET /tweets
  # GET /tweets.json
  def index
    @tweets = FindTweets.new(Tweet).call(params).order('created_at DESC')
    @trends = latest_trends
    @tweet  = Tweet.new
    @users  = User.limit(10)
  end

  # GET /tweets/new
  def new
    @tweet = Tweet.new
  end

  # GET /tweets/1/edit
  def edit; end

  # POST /tweets
  # POST /tweets.json
  def create
    @tweet = current_user.tweets.new(tweet_params)

    respond_to do |format|
      if @tweet.save
        format.html { redirect_to root_path, notice: 'Tweet was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /tweets/1
  # PATCH/PUT /tweets/1.json
  def update
    respond_to do |format|
      if @tweet.update(tweet_params)
        format.html { redirect_to @tweet, notice: 'Tweet was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /tweets/1
  # DELETE /tweets/1.json
  def destroy
    @tweet.destroy
    respond_to do |format|
      format.html { redirect_to tweets_url, notice: 'Tweet was successfully destroyed.' }
    end
  end

  private

  def authorize_modification
    return unless current_user.id != @tweet.user_id

    flash[:alert] = 'You\'re not supposed to be here'
    redirect_to tweets_path
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_tweet
    @tweet = Tweet.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def tweet_params
    params.require(:tweet).permit(:body)
  end
end
