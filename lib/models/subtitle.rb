require "subtitler/version"

module Subtitler
  class Subtitle
    attr_accessor :blocks

    def initialize(blocks: [])
      @blocks = blocks
    end
  end
end
