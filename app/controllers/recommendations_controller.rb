class RecommendationsController < ApplicationController
  before_action :set_recommendation, only: [:show, :edit, :update, :destroy]

  # GET /recommendations
  # GET /recommendations.json
  def index
    @recommendations = Recommendation.all
  end

  # GET /recommendations/1
  # GET /recommendations/1.json
  def show
    @recommendation = Recommendation.find_by(id: params[:id])
    @comments = @recommendation.comments.all
    @current_book = Book.find_by_id(session[:current_book_id])
  end

  # GET /recommendations/new
  def new
    @recommendation = Recommendation.new
    @current_book = Book.find_by_id(session[:current_book_id])
  end

  # GET /recommendations/1/edit
  def edit
  end

  # POST /recommendations
  # POST /recommendations.json
  def create
    current_book = Book.find_by_id(session[:current_book_id])
    @recommendation = current_book.recommendations.new(recommendation_params)
    current_user.recommendations << @recommendation
    respond_to do |format|
      if @recommendation.save
        format.html { redirect_to @recommendation, notice: 'Recommendation was successfully created.' }
        format.json { render :show, status: :created, location: @recommendation }
      else
        format.html { render :new }
        format.json { render json: @recommendation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recommendations/1
  # PATCH/PUT /recommendations/1.json
  def update
    respond_to do |format|
      if @recommendation.update(recommendation_params)
        format.html { redirect_to @recommendation, notice: 'Recommendation was successfully updated.' }
        format.json { render :show, status: :ok, location: @recommendation }
      else
        format.html { render :edit }
        format.json { render json: @recommendation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recommendations/1
  # DELETE /recommendations/1.json
  def destroy
    @recommendation.destroy
    respond_to do |format|
      format.html { redirect_to recommendations_url, notice: 'Recommendation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def upvote 
    @recommendation = Recommendation.find(params[:id])
    @recommendation.upvote_by current_user
    redirect_to :back
  end  

  def downvote
    @recommendation = Recommendation.find(params[:id])
    @recommendation.downvote_by current_user
    redirect_to :back
  end

  def add_new_comment
    recommendation = Recommendation.find(params[:id])
    recommendation.comments << Recommendation.new(params[:comment])
    redirect_to :action => :show, :id => recommendation
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recommendation
      @recommendation = Recommendation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recommendation_params
      params.require(:recommendation).permit(:name, :description, :book_id, :type_id, :user_id)
    end
end
