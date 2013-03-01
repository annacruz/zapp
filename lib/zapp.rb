require 'structure/directory'
require 'structure/generate_app'
require 'structure/remove'
require 'gems/install'

class Zapp
  attr_accessor :name, :path, :application_path, :gems, :test, :git, :rm, :database
  include Structure::Directory
  include Structure::GenerateApp
  include Structure::Remove
  include Gems::Install

  def initialize args = {}
    @name             = args[:name]
    @path             = args[:path]
    @application_path = File.join args[:path], args[:name]
    @test             = args[:test]
    @git              = args[:git]
    @rm               = args[:rm]
    @database         = args[:database]
    @gems             = args[:gems]
  end
end
