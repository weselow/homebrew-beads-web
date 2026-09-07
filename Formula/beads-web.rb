class BeadsWeb < Formula
  desc "Visual Kanban board and multi-project dashboard for beads task tracking"
  homepage "https://github.com/weselow/beads-web"
  version "0.12.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/weselow/beads-web/releases/download/v0.12.3/beads-web-darwin-arm64"
      sha256 "9d63d2bcd9ad5a30b07620c8a044ce9b536e0fdaa51fa583034546de594e7b87"
    end
    on_intel do
      url "https://github.com/weselow/beads-web/releases/download/v0.12.3/beads-web-darwin-x64"
      sha256 "d315bc40b2194eb07135482bab8e6e1a2d87bd57265a2de22c97b251477aa0d2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/weselow/beads-web/releases/download/v0.12.3/beads-web-linux-x64"
      sha256 "e91d335845843b44d64971061421b216e574f476cdbf3c22858bda197c125712"
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
