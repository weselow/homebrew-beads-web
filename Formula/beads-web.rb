class BeadsWeb < Formula
  desc "Visual Kanban board and multi-project dashboard for beads task tracking"
  homepage "https://github.com/weselow/beads-web"
  version "0.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/weselow/beads-web/releases/download/v0.12.0/beads-web-darwin-arm64"
      sha256 "95a8375d4ccce3ba3bb5c5fa4924077543e00caa6835026b0fae5af2d3548ec1"
    end
    on_intel do
      url "https://github.com/weselow/beads-web/releases/download/v0.12.0/beads-web-darwin-x64"
      sha256 "610ac6c9dc8bc99a5989057f8f2c9e7b9b7cbd35688e014fe301bfc6290020f0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/weselow/beads-web/releases/download/v0.12.0/beads-web-linux-x64"
      sha256 "67aac10bf8a8db71100b30e0563621325c99ab35217a922e669d88d7bb9abf15"
    end
  end

  def install
    bin.install Dir["beads-web-*"].first => "beads-web"
  end

  def caveats
    <<~EOS
      beads-web needs the Beads CLI (bd) on your PATH:
        https://github.com/gastownhall/beads
      Run `beads-web` and open http://localhost:3008
    EOS
  end

  test do
    assert_path_exists bin/"beads-web"
  end
end
