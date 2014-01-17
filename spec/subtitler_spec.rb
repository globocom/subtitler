require "spec_helper"

describe Subtitler do
  describe "parsing input" do
    context "Sofni (.sub) files" do
      subject do
        Subtitler.parse(
          <<-EOF.strip_heredoc
            -Qual é, meu irmão?
            -Minha bicicleta!
            10:01:28.15\\10:01:31.11
            Nem sonhando, primo!
            10:03:10.26\\10:03:12.24
          EOF
        )
      end

      it { expect(subject.blocks).to have(2).items }
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
