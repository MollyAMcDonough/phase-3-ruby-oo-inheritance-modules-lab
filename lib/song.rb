require 'pry'

class Song
  extend Findable
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  include Paramable
  attr_accessor :name
  attr_reader :artist

  @@all = []

  def initialize
    self.class.all << self
  end

  def self.all
    @@all
  end

  def artist=(artist)
    @artist = artist
  end
end
