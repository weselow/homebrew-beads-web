class BeadsWeb < Formula
  desc "Visual Kanban board and multi-project dashboard for beads task tracking"
  homepage "https://github.com/weselow/beads-web"
  version "0.12.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/weselow/beads-web/releases/download/v0.12.1/beads-web-darwin-arm64"
      sha256 "47b3b1b38c3540403466ace00e9b0781c37ba3350791089ed604cc9864dc825e"
    end
    on_intel do
      url "https://github.com/weselow/beads-web/releases/download/v0.12.1/beads-web-darwin-x64"
      sha256 "3c86f5518864035555095fe38d243df038941e164d5374a2f2f46a428c7fe938"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/weselow/beads-web/releases/download/v0.12.1/beads-web-linux-x64"
      sha256 "2517d2617d47e18698a62e2e528c3e41b43c76a3f31252fea12c1f996c659e50"
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
