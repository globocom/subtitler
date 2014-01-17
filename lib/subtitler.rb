require "subtitler/version"

module Subtitler
  module Parser
    def parse input
      # 10:01:28.15\10:01:31.11
      # hh:mm:ss.ff\hh:mm:ss.ff
      blocks = []

      input.each_line do |line|
        if line.match(/(\d{2}:\d{2}:\d{2}[\.\:]\d{2})\\(\d{2}:\d{2}:\d{2}[\.:]\d{2})/)
          blocks << line
        end
      end
      Subtitle.new(blocks: blocks)
    end
  end
  extend Parser

  class Subtitle
    attr_accessor :blocks

    def initialize(blocks: [])
      @blocks = blocks
    end
  end

  class SubtitleBlock
  end
end
