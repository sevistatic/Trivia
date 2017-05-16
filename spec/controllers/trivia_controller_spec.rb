require "rails_helper"

RSpec.describe TriviaController, :type => :controller do
  describe "GET #index" do
    it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end

  describe "POST #index" do
    it "redirects to the high score list" do
      post :submit, params: {triviaQuestion: "TEST"}
      expect(response).to redirect_to trivia_high_scores_path
    end
  end

  describe "GET #high_scores" do
    it "responds successfully with an HTTP 200 status code" do
      get :high_scores
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end
  end
end
