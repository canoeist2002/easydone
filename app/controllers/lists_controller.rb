# coding: utf-8
class ListsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @lists = current_user.lists.all
    @tasks = {}

    if !@lists.empty?
      @lists.each do |list|
        @tasks[list] = list.tasks.all
      end
    end

  end

  def new
    @list = List.new
  end

  def create
    @list = current_user.lists.build(params[:list])
    if @list.save
      flash[:success] = "创建分类成功"
      redirect_to lists_path
    else
      render :action => "new"
    end
  end

  def destroy
    @list = current_user.lists.find_by_id(params[:id])
    @list.destroy
    redirect_to lists_path
  end
end
