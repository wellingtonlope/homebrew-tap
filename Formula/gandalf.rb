class Gandalf < Formula
  desc "Cryptographically secure password generator — speak, friend, and enter"
  homepage "https://github.com/wellingtonlope/gandalf"
  license "MIT"
  version "0.3.0"

  on_macos do
    on_arm do
      url "https://github.com/wellingtonlope/gandalf/releases/download/v0.3.0/gandalf-darwin-arm64.tar.gz"
      sha256 "d5c6e1a8cde7e26eac55b2280bf9d77caa13ebb2721937791eb7199621741d90"
      def install
        bin.install "gandalf-darwin-arm64" => "gandalf"
      end
    end
    on_intel do
      url "https://github.com/wellingtonlope/gandalf/releases/download/v0.3.0/gandalf-darwin-amd64.tar.gz"
      sha256 "bd12d03e641b00902b5f86b15ec9e3e4c71640ca005934b20770132bf1187fb6"
      def install
        bin.install "gandalf-darwin-amd64" => "gandalf"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wellingtonlope/gandalf/releases/download/v0.3.0/gandalf-linux-arm64.tar.gz"
      sha256 "4e97087b26a921a8e7c663f08a70af980e1d60e93fd024c594fc74371d17e475"
      def install
        bin.install "gandalf-linux-arm64" => "gandalf"
      end
    end
    on_intel do
      url "https://github.com/wellingtonlope/gandalf/releases/download/v0.3.0/gandalf-linux-amd64.tar.gz"
      sha256 "d6b8e7679789c23a174e48afc1ae5639c5df7396ff062464f41a094a112d69ad"
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
