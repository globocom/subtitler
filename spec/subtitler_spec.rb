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

      context "parsing timestamps" do
        let (:first_block) { subtitle.blocks.first }
        let (:second_block) { subtitle.blocks.second }

        it "should parse first block timestamps" do
          expect(first_block.start_time).to eq("00:00:00.00")
          expect(first_block.end_time).to eq("00:00:01.00")
        end

        it "should parse second block timestamps" do
          expect(second_block.start_time).to eq("00:00:10.00")
          expect(second_block.end_time).to eq("00:00:11.00")
        end
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
