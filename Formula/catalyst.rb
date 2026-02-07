class Catalyst < Formula
  desc "AI-powered coding agent CLI with multi-provider LLM support"
  homepage "https://github.com/defendend/catalyst"
  license "MIT"
  version "1.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/catalyst-releases/releases/download/v1.0.0/catalyst-v1.0.0-darwin-arm64.tar.gz"
      sha256 "2f7bc0702a564d2c841f3e25b63be359f296ac1e669b50557082e1b2b0103331"
    else
      url "https://github.com/defendend/catalyst-releases/releases/download/v1.0.0/catalyst-v1.0.0-darwin-x86_64.tar.gz"
      sha256 "9173ede96abe9c03307ada9e4779fbc5a458c67026733c62e5fda779e9a65290"
    end
  end

  on_linux do
    url "https://github.com/defendend/catalyst-releases/releases/download/v1.0.0/catalyst-v1.0.0-linux-x86_64.tar.gz"
    sha256 "cc3015db61e85699fa963b66f42b48b70bd49f6e1050606ebc1a2dfa7bf2206b"
  end

  def install
    bin.install "catalyst"
  end

  test do
    assert_match "catalyst", shell_output("#{bin}/catalyst --version")
  end
end
