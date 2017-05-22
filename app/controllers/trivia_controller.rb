class TriviaController < ApplicationController
  before_action :set_trivium, only: [:show, :edit, :update, :destroy]

  # GET /trivia
  # GET /trivia.json
  def index
    @trivia = Trivium.all
  end

  def submit
    print("current_user----->#{current_user}\n")
    print("email----->#{current_user.email}\n")
    @score = Score.create(user: current_user.email)
    redirect_to scores_path
  end

  # GET /trivia/1
  # GET /trivia/1.json
  def show
  end

  # GET /trivia/new
  def new
    @trivium = Trivium.new
  end

  # GET /trivia/1/edit
  def edit
  end

  # POST /trivia
  # POST /trivia.json
  def create
    @trivium = Trivium.new(trivium_params)

    respond_to do |format|
      if @trivium.save
        format.html { redirect_to @trivium, notice: 'Trivium was successfully created.' }
        format.json { render :show, status: :created, location: @trivium }
      else
        format.html { render :new }
        format.json { render json: @trivium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trivia/1
  # PATCH/PUT /trivia/1.json
  def update
    respond_to do |format|
      if @trivium.update(trivium_params)
        format.html { redirect_to @trivium, notice: 'Trivium was successfully updated.' }
        format.json { render :show, status: :ok, location: @trivium }
      else
        format.html { render :edit }
        format.json { render json: @trivium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trivia/1
  # DELETE /trivia/1.json
  def destroy
    @trivium.destroy
    respond_to do |format|
      format.html { redirect_to trivia_url, notice: 'Trivium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trivium
      @trivium = Trivium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trivium_params
      params.require(:trivium).permit(:question, :answer)
    end
end
