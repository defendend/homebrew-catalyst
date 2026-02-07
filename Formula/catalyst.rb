class Catalyst < Formula
  desc "AI-powered coding agent CLI with multi-provider LLM support"
  homepage "https://github.com/defendend/catalyst-releases"
  license "MIT"
  version "1.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/catalyst-releases/releases/download/v1.1.0/catalyst-v1.1.0-darwin-arm64.tar.gz"
      sha256 "2c734de7d23308a92f00b42c360733c55c850f765a9c96a8af9b43714bf4cec9"
    else
      url "https://github.com/defendend/catalyst-releases/releases/download/v1.1.0/catalyst-v1.1.0-darwin-x86_64.tar.gz"
      sha256 "fb6b2b5e76233782753927c1628be0e5622163aec07a53991ae6752627e2d993"
    end
  end

  on_linux do
    url "https://github.com/defendend/catalyst-releases/releases/download/v1.1.0/catalyst-v1.1.0-linux-x86_64.tar.gz"
    sha256 "218b882462d5a0a826665d34059429372cbded6a33ad48207d69b8f74295d348"
  end

  def install
    bin.install "catalyst"
  end

  test do
    assert_match "catalyst", shell_output("#{bin}/catalyst --version")
  end
end
