require 'test_helper'


describe Game do
  before { Game.setup }

  describe "#setup" do
    it "has a game window" do
      Game.game_window.must_be_instance_of GameWindow
    end

    it "has an input manager" do
      expect(Game.input_manager).must_be_instance_of InputManager
    end

    it "has an input manager with a target" do
      expect(Game.input_manager.target).must_be_instance_of GameWindow
    end

    it "has a scene" do
      expect(Game.scene).must_be_instance_of Scene
    end
  end

  describe "#start" do
    it "shows the game window" do
      #expect(GameWindow).must_send(:show)
      Game.start
    end
  end
end
