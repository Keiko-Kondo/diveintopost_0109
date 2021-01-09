class FavoritesController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    favorite = current_user.favorites.create(article_id: params[:article_id])
    # redirect_to dashboard_url, notice: "記事をお気に入り登録しました"
    redirect_to article_url(@article), notice: "記事をお気に入りにしました"
  end
  def destroy
    # @article = Article.find(params[:article_id])
    # favorite = current_user.favorites.find_by(id: params[:id]).destroy
    # redirect_to article_url(@article), notice: "記事をお気に入り解除しました"
    # 

    favorite = current_user.favorites.find_by(id: params[:id]).destroy
    redirect_to dashboard_url, notice: "記事をお気に入り解除しました"
  end
end
