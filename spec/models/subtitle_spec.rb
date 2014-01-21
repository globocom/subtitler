require "spec_helper"

describe Subtitler::Subtitle do
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

    it "should have 2 blocks" do
      expect(subtitle.blocks).to have(2).items
    end
  end
end
