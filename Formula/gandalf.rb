class Gandalf < Formula
  desc "Cryptographically secure password generator — speak, friend, and enter"
  homepage "https://github.com/wellingtonlope/gandalf"
  license "MIT"
  version "0.3.1"

  on_macos do
    on_arm do
      url "https://github.com/wellingtonlope/gandalf/releases/download/v0.3.1/gandalf-darwin-arm64.tar.gz"
      sha256 "effdd3c523fabedfd0a43e24cb050f32188fedb38867379bae82dac1cf4ab85c"
      def install
        bin.install "gandalf-darwin-arm64" => "gandalf"
      end
    end
    on_intel do
      url "https://github.com/wellingtonlope/gandalf/releases/download/v0.3.1/gandalf-darwin-amd64.tar.gz"
      sha256 "1df172809a525e376732eb57b29f07ae6bab093341aa6c19eb6b2d222759a064"
      def install
        bin.install "gandalf-darwin-amd64" => "gandalf"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/wellingtonlope/gandalf/releases/download/v0.3.1/gandalf-linux-arm64.tar.gz"
      sha256 "9b866185eb97ed6498645859c7faf3173d624f99d0ab2c889a5bcf6c3c79b446"
      def install
        bin.install "gandalf-linux-arm64" => "gandalf"
      end
    end
    on_intel do
      url "https://github.com/wellingtonlope/gandalf/releases/download/v0.3.1/gandalf-linux-amd64.tar.gz"
      sha256 "09accbc55f6af8bfbddd00b8539f1ec0eb60d46a7aa5acc6960a1fc4e7547cf8"
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
