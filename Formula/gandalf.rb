class Gandalf < Formula
  desc "Cryptographically secure password generator — speak, friend, and enter"
  homepage "https://github.com/wellingtonlope/gandalf"
  license "MIT"
  version "0.2.2"

  on_macos do
    on_arm do
      url "https://github.com/wellingtonlope/gandalf/releases/download/v0.2.2/gandalf-darwin-arm64.tar.gz"
      sha256 "de29b9b078ded9832a05730a36a4e88087d62e726d1c4ad08aefa24329bfa71a"
      def install
        bin.install "gandalf-darwin-arm64" => "gandalf"
      end
    end
    on_intel do
      url "https://github.com/wellingtonlope/gandalf/releases/download/v0.2.2/gandalf-darwin-amd64.tar.gz"
      sha256 "8b2cdb7c8572357581cca5364f1a5c9e345f5b62f070df674bee75542e38409e"
      def install
        bin.install "gandalf-darwin-amd64" => "gandalf"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wellingtonlope/gandalf/releases/download/v0.2.2/gandalf-linux-arm64.tar.gz"
      sha256 "6cf7a3fa75a04df2247849d771b0493d06b9318bcdc01a1345bf8126ab7e0995"
      def install
        bin.install "gandalf-linux-arm64" => "gandalf"
      end
    end
    on_intel do
      url "https://github.com/wellingtonlope/gandalf/releases/download/v0.2.2/gandalf-linux-amd64.tar.gz"
      sha256 "d215e33788ef5cd1b380e89029be6049835d51fff07de6c6149c0140d834dcfb"
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
