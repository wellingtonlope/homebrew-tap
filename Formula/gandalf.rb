class Gandalf < Formula
  desc "Cryptographically secure password generator — speak, friend, and enter"
  homepage "https://github.com/wellingtonlope/gandalf"
  license "MIT"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/wellingtonlope/gandalf/releases/download/v0.1.0/gandalf-darwin-arm64.tar.gz"
      sha256 "1ecc7d7078e14ce16b95f68ec088c388f1958c4bf84a583c415f2bc13f761539"
      def install
        bin.install "gandalf-darwin-arm64" => "gandalf"
      end
    end
    on_intel do
      url "https://github.com/wellingtonlope/gandalf/releases/download/v0.1.0/gandalf-darwin-amd64.tar.gz"
      sha256 "d628fd28f501156316f1d68d5dad5ccea06ec20d3ffa43f72be32bc1e558f338"
      def install
        bin.install "gandalf-darwin-amd64" => "gandalf"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wellingtonlope/gandalf/releases/download/v0.1.0/gandalf-linux-arm64.tar.gz"
      sha256 "9f8fab52991cdb66e28bcbc313fb0f957beb3f563ef8cb67ae7aa185bcc629ef"
      def install
        bin.install "gandalf-linux-arm64" => "gandalf"
      end
    end
    on_intel do
      url "https://github.com/wellingtonlope/gandalf/releases/download/v0.1.0/gandalf-linux-amd64.tar.gz"
      sha256 "9def2b520710a23b4f30aff1765735c8b0c317874d9de03be32537fed961bf57"
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
