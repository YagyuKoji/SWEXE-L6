class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end

  def new
    @tweet = Tweet.new
  end
  
  def create
    @tweet = Tweet.new(message: params[:message], user_id: params[:user_id])
    if @tweet.save
      redirect_to root_path
    else
      render :new
    end
  end
  
  def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy
    redirect_to tweets_path
  end

  def edit
    @tweet = Tweet.find(params[:id])
  end
  
  def update
    @tweet = Tweet.find(params[:id])
    if @tweet.update(message: params[:tweet][:message])
      logger.debug("保存成功")
      redirect_to root_path
    else
      logger.debug("保存失敗")
      render :edit
    end
  end
  
  
  
end
