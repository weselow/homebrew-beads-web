class BeadsWeb < Formula
  desc "Visual Kanban board and multi-project dashboard for beads task tracking"
  homepage "https://github.com/weselow/beads-web"
  version "0.12.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/weselow/beads-web/releases/download/v0.12.4/beads-web-darwin-arm64"
      sha256 "094f195d0dd6f99f488f620de4dca5cdc3bbd9e7b52ce1bdb6c66a17e6b03deb"
    end
    on_intel do
      url "https://github.com/weselow/beads-web/releases/download/v0.12.4/beads-web-darwin-x64"
      sha256 "ec55297f1075ed547798319018a8226ac7e5f88633477dbf1c4ea857d275065c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/weselow/beads-web/releases/download/v0.12.4/beads-web-linux-x64"
      sha256 "570975e8692fe580d919b5c52e77177b7cc5278abb62360f92472ebb3c7f8c82"
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
