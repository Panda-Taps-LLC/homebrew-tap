# Filled by scripts/tap-formula.sh from the verified checksums.txt of v0.1.0. Do not edit by hand.
class Watchdeck < Formula
  desc "Every Claude Code session as a live map; turn a denial into a rule in one click"
  homepage "https://github.com/Panda-Taps-LLC/watchdeck"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Panda-Taps-LLC/watchdeck/releases/download/v0.1.0/watchdeck_0.1.0_darwin_arm64.tar.gz"
      sha256 "7b8ffc76ec694ed3a710d659f5443fcf4d841798f4f152e3be68a489354cf411"
    end
    on_intel do
      url "https://github.com/Panda-Taps-LLC/watchdeck/releases/download/v0.1.0/watchdeck_0.1.0_darwin_amd64.tar.gz"
      sha256 "f70e17e89cf06f3f263a6524d5281f24e1da9c18c890f1457c5768484efd376f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Panda-Taps-LLC/watchdeck/releases/download/v0.1.0/watchdeck_0.1.0_linux_arm64.tar.gz"
      sha256 "de59b463fe14b7bc52fd5249656cec16f924aea7e3f7ab8e8ab4d15f8f4d000a"
    end
    on_intel do
      url "https://github.com/Panda-Taps-LLC/watchdeck/releases/download/v0.1.0/watchdeck_0.1.0_linux_amd64.tar.gz"
      sha256 "14c2528f1d3b53cfc2961a10c6ef288234312307c150cfd95622f88a184cb46a"
    end
  end

  def install
    bin.install "watchdeck"
  end

  def caveats
    <<~EOS
      Next: watchdeck setup
    EOS
  end

  test do
    assert_match "watchdeck", shell_output("#{bin}/watchdeck version")
  end
end
