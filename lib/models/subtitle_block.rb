require "subtitler/version"

module Subtitler
  class SubtitleBlock
    attr_accessor :start_time
    attr_accessor :end_time

    def initialize(start_time: nil, end_time: nil)
      @start_time = start_time
      @end_time = end_time
    end
  end
end
