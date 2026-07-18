class BeadsWeb < Formula
  desc "Visual Kanban board and multi-project dashboard for beads task tracking"
  homepage "https://github.com/weselow/beads-web"
  version "0.12.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/weselow/beads-web/releases/download/v0.12.2/beads-web-darwin-arm64"
      sha256 "d1507a3d71f5ede073b43c8631de3a32708a5c304db9a4255861141ccd2d3ff7"
    end
    on_intel do
      url "https://github.com/weselow/beads-web/releases/download/v0.12.2/beads-web-darwin-x64"
      sha256 "fbb6dea0347e9ad29355ece41b917762700f68bf8ae273484bc4f6e7e21d38b6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/weselow/beads-web/releases/download/v0.12.2/beads-web-linux-x64"
      sha256 "3068f5605f5905bb403ef58e1cc3ea47500270ce733c0475e3833e50b8462cb8"
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
