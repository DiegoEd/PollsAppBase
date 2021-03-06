class PollsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_poll, only: [:show, :edit, :update, :destroy, :answer, :show_answers]
  before_action :answered, only: [:answer]
  before_action :authenticate_admin!, except: [:answer, :save_answer, :show_answers]

  # GET /polls
  # GET /polls.json
  def index
    @polls = Poll.all
  end

  # GET /polls/1
  # GET /polls/1.json
  def show
    @question = Question.new
  end

  # GET /polls/new
  def new
    @poll = Poll.new
  end

  # GET /polls/1/edit
  def edit
  end

  # POST /polls
  # POST /polls.json
  def create
    @poll = Poll.new(poll_params)

    respond_to do |format|
      if @poll.save
        format.html { redirect_to @poll, notice: 'Poll was successfully created.' }
        format.json { render :show, status: :created, location: @poll }
      else
        format.html { render :new }
        format.json { render json: @poll.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /polls/1
  # PATCH/PUT /polls/1.json
  def update
    respond_to do |format|
      if @poll.update(poll_params)
        format.html { redirect_to @poll, notice: 'Poll was successfully updated.' }
        format.json { render :show, status: :ok, location: @poll }
      else
        format.html { render :edit }
        format.json { render json: @poll.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /polls/1
  # DELETE /polls/1.json
  def destroy
    @poll.destroy
    respond_to do |format|
      format.html { redirect_to polls_url, notice: 'Poll was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def answer
  end

  def save_answer
    @options = params[:poll]
    @options.each do |key, value|
      user_poll_option = UserPollOption.new
      user_poll_option.user_id = current_user.id
      user_poll_option.poll_id = params[:id]
      user_poll_option.option_id = value
      user_poll_option.save
    end

    redirect_to root_path, notice: "Respuestas guardadas en el servidor."
  end

  def show_answers
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poll
      @poll = Poll.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def poll_params
      params.require(:poll).permit(:title, :description, :version)
    end

    def answered
      if UserPollOption.where(user_id: current_user.id, poll_id: @poll.id).count > 0
        redirect_to root_path, notice: "Solo puede contestar a la encuesta una vez."
      end
    end
end
