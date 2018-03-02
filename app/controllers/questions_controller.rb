class QuestionsController < ApplicationController
  before_action :define_question, only: [:show, :destroy]
  before_action :define_test, only: [:index, :new, :create]

  rescue_from ActiveRecord::RecordNotFound,
    with: :rescue_with_question_not_found

  def index
  end

  def show
  end

  def new
  end

  def create
    question = @test.questions.create(question_params)
    redirect_to test_questions_url
  end

  def destroy
    @question.destroy
    render plain: 'Question deleted'
  end

  private

  def define_question
    @question = Question.find(params[:id])
  end

  def define_test
    @test = Test.find(params[:test_id])
  end

  def question_params
    params.require(:question).permit(:body)
  end

  def rescue_with_question_not_found
    render plain: 'Question was not found'
  end
end
