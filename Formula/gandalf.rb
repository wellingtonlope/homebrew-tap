class Gandalf < Formula
  desc "Cryptographically secure password generator — speak, friend, and enter"
  homepage "https://github.com/wellingtonlope/gandalf"
  license "MIT"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/wellingtonlope/gandalf/releases/download/v0.2.0/gandalf-darwin-arm64.tar.gz"
      sha256 "e8720367cdccc636672e3fa2b1013ca814930405b65cc643988f43c7e70b359f"
      def install
        bin.install "gandalf-darwin-arm64" => "gandalf"
      end
    end
    on_intel do
      url "https://github.com/wellingtonlope/gandalf/releases/download/v0.2.0/gandalf-darwin-amd64.tar.gz"
      sha256 "e9b4ad88c6d19fdf694432ca4a35d379d78d84315996f4d12dbce32c1208587e"
      def install
        bin.install "gandalf-darwin-amd64" => "gandalf"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wellingtonlope/gandalf/releases/download/v0.2.0/gandalf-linux-arm64.tar.gz"
      sha256 "534694b3e74f58e6843a6fc433a5a9340b122f2e526cf4662fb8dc273130a704"
      def install
        bin.install "gandalf-linux-arm64" => "gandalf"
      end
    end
    on_intel do
      url "https://github.com/wellingtonlope/gandalf/releases/download/v0.2.0/gandalf-linux-amd64.tar.gz"
      sha256 "f7e0d715ca1c243a3c508107c9153f472b8ba2a9a67ef1031a292b0055f36fb4"
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
