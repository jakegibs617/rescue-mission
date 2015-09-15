class AnswersController < ApplicationController

  def new
    @question = Question.find(params[:question_id])
    @answer = Answer.new
  end

  def create

   @question = Question.find(params[:question_id])
   @answer = @question.answers.create(answer_params)
   redirect_to question_path(@question)

  end

  def destroy
    @answer = Answer.find(params[:id])
    @answer.destroy
    flash[:notice] = 'answer deleted.'
    redirect_to question_path(@answer.question_id)
  end

  private

  def answer_params
    params.require(:answer).permit(:name, :body)
  end

end
