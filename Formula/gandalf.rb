class Gandalf < Formula
  desc "Cryptographically secure password generator — speak, friend, and enter"
  homepage "https://github.com/wellingtonlope/gandalf"
  license "MIT"
  version "0.2.1"

  on_macos do
    on_arm do
      url "https://github.com/wellingtonlope/gandalf/releases/download/v0.2.1/gandalf-darwin-arm64.tar.gz"
      sha256 "16db2e98749b89f32687a08c20e395d72426e0143c3772502c84f319d25eaa29"
      def install
        bin.install "gandalf-darwin-arm64" => "gandalf"
      end
    end
    on_intel do
      url "https://github.com/wellingtonlope/gandalf/releases/download/v0.2.1/gandalf-darwin-amd64.tar.gz"
      sha256 "44f2b6b31499b315e3519b1370b09edff97d7951fcc1d47958709c5ccf82ae79"
      def install
        bin.install "gandalf-darwin-amd64" => "gandalf"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wellingtonlope/gandalf/releases/download/v0.2.1/gandalf-linux-arm64.tar.gz"
      sha256 "ee9aecc4428da1a7a0e3585411fd205330de5c90adcc4e35e634ed618f6d26e1"
      def install
        bin.install "gandalf-linux-arm64" => "gandalf"
      end
    end
    on_intel do
      url "https://github.com/wellingtonlope/gandalf/releases/download/v0.2.1/gandalf-linux-amd64.tar.gz"
      sha256 "e8dbf09d5d6e710fa2c016d90baec8f5d66a1fb105a6e696bdcccf2ea9ace3e9"
      def install
        bin.install "gandalf-linux-amd64" => "gandalf"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gandalf --version")
    system bin/"gandalf", "-l", "16"
  end
end
