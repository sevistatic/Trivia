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

  describe "POST #submit" do
    it "responds successfully with an HTTP 200 status code" do
      get :high_scores
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end
  end

  describe "GET #high_scores" do
    it "responds successfully with an HTTP 200 status code" do
      get :high_scores
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end
    it "renders the high_scores template" do
      get :high_scores
      expect(response).to render_template("high_scores")
    end
  end

  describe "GET #questions" do
    it "responds successfully with an HTTP 200 status code" do
      get :questions
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end
    it "renders the high_scores template" do
      get :questions
      expect(response).to render_template("questions")
    end
  end

  describe "GET #new" do
    it "responds successfully with an HTTP 200 status code" do
      get :new
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end
    it "renders the high_scores template" do
      get :new
      expect(response).to render_template("new")
    end
  end
end
