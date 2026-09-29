class BeadsWeb < Formula
  desc "Visual Kanban board and multi-project dashboard for beads task tracking"
  homepage "https://github.com/weselow/beads-web"
  version "0.14.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/weselow/beads-web/releases/download/v0.14.0/beads-web-darwin-arm64"
      sha256 "07eede1184a31add4918e485053a011d9e15b7ceb384180778dd84b4c00ea63f"
    end
    on_intel do
      url "https://github.com/weselow/beads-web/releases/download/v0.14.0/beads-web-darwin-x64"
      sha256 "6813a74a97d8dcc451d42cb8d0ca6c4dbd5896c79e3d9baa94098b3db525af27"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/weselow/beads-web/releases/download/v0.14.0/beads-web-linux-x64"
      sha256 "a06effa2e08b51d8438dcfce6b1dc9946d0229f4101ddf63b1e302cce151acae"
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
