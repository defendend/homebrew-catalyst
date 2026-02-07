class Catalyst < Formula
  desc "AI-powered coding agent CLI with multi-provider LLM support"
  homepage "https://github.com/defendend/catalyst-releases"
  license "MIT"
  version "1.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/catalyst-releases/releases/download/v1.0.0/catalyst-v1.0.0-darwin-arm64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    else
      url "https://github.com/defendend/catalyst-releases/releases/download/v1.0.0/catalyst-v1.0.0-darwin-x86_64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
  end

  on_linux do
    url "https://github.com/defendend/catalyst-releases/releases/download/v1.0.0/catalyst-v1.0.0-linux-x86_64.tar.gz"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  end

  def install
    bin.install "catalyst"
  end

  test do
    assert_match "catalyst", shell_output("#{bin}/catalyst --version")
  end
end
