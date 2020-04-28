class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update, :destroy, :upvote, :downvote]

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    @question.user = current_user
    if @question.save
      redirect_to questions_path(@question)
    else
      render :new
    end
  end

  def index
    @questions = Question.all

  end

  def show
    @question = Question.find(params[:id])
  end


  def upvote
    @question.upvote_from current_user
    redirect_to questions_path
  end

  def downvote
    @question.downvote_from current_user
    redirect_to questions_path
  end


private

  def set_question
    @question = Question.find(params[:id])
  end

  def question_params
    params.require(:question).permit(:name, :description)
  end
end

