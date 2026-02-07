class Catalyst < Formula
  desc "AI-powered coding agent CLI with multi-provider LLM support"
  homepage "https://github.com/defendend/catalyst-releases"
  license "MIT"
  version "1.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/catalyst-releases/releases/download/v1.2.1/catalyst-v1.2.1-darwin-arm64.tar.gz"
      sha256 "2933eda92715d97165e23094eb38c30a05f8f7881ee2b3d1f24056bccf932417"
    else
      url "https://github.com/defendend/catalyst-releases/releases/download/v1.2.1/catalyst-v1.2.1-darwin-x86_64.tar.gz"
      sha256 "a95f39e102f67a10267c4337d43a6a50a3370be360f8627f5fae08815a62689a"
    end
  end

  on_linux do
    url "https://github.com/defendend/catalyst-releases/releases/download/v1.2.1/catalyst-v1.2.1-linux-x86_64.tar.gz"
    sha256 "36c693851676535cdf08fbe1d133f2daf85a060e5da33904961c8b964e7532b6"
  end

  def install
    bin.install "catalyst"
  end

  test do
    assert_match "catalyst", shell_output("#{bin}/catalyst --version")
  end
end
