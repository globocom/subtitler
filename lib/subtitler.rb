require "subtitler/version"

require "models/subtitle"

module Subtitler
  module Parser
    def parse input
      # 10:01:28.15\10:01:31.11
      # hh:mm:ss.ff\hh:mm:ss.ff
      blocks = []

      input.each_line do |line|
        timestamps = line.match(/(\d{2}:\d{2}:\d{2}[\.\:]\d{2})\\(\d{2}:\d{2}:\d{2}[\.:]\d{2})/)
        if timestamps
          blocks << SubtitleBlock.new(
            start_time: timestamps[1],
            end_time: timestamps[2]
          )
        end
      end
      Subtitle.new(blocks: blocks)
    end
  end
  extend Parser

  class SubtitleBlock
    attr_accessor :start_time
    attr_accessor :end_time

    def initialize(start_time: nil, end_time: nil)
      @start_time = start_time
      @end_time = end_time
    end
  end
end
