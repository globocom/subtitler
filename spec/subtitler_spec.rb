require "spec_helper"

describe Subtitler do
  describe "parsing input" do
    context "Sofni (.sub) files" do
      let (:subtitle) do
        Subtitler.parse(
          <<-EOF.strip_heredoc
            -Qual é, meu irmão?
            -Minha bicicleta!
            00:00:00.00\\00:00:01.00
            Nem sonhando, primo!
            00:00:10.00\\00:00:11.00
          EOF
        )
      end
    end
  end

  describe "converting input formats to SubRip (.srt)" do
    it "works"
  end

  describe "time-shifting subtitles" do
    it "works"
  end

  describe "validating input files" do
    it "works"
  end
end
