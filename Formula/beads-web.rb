class BeadsWeb < Formula
  desc "Visual Kanban board and multi-project dashboard for beads task tracking"
  homepage "https://github.com/weselow/beads-web"
  version "0.13.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/weselow/beads-web/releases/download/v0.13.0/beads-web-darwin-arm64"
      sha256 "c7b0ad5cff762e2835dc8c3b288f62423c9397593a77bdd546f9a4c47a79e06f"
    end
    on_intel do
      url "https://github.com/weselow/beads-web/releases/download/v0.13.0/beads-web-darwin-x64"
      sha256 "ffe3893b5d4ec3405cbd5d423d36d4c5b20f3bc232348641b1853337c9f6a459"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/weselow/beads-web/releases/download/v0.13.0/beads-web-linux-x64"
      sha256 "93672b55ac0e24b00d4e5d9c4a152acda163ab514857f0ae4753a886bdc96537"
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
