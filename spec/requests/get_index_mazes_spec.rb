require 'rails_helper'

RSpec.describe "GetIndexMazes", type: :request do
  describe "GET /" do
    before do
      get '/?height=1&width=1'
    end

    it "should be 200 successful" do
      expect(response).to have_http_status(200)
    end

    it "should contain the maze" do
      maze_html = File.read(Rails.root.join('spec', 'fixtures', '1by1_maze.html'))
      expect(response.body).to match(maze_html)
    end
  end
end
