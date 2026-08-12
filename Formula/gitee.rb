# Regenerate sha256 on the next release:
# curl -sL https://github.com/kipyin/gitee-cli/releases/download/vVERSION/gitee-aarch64-apple-darwin-vVERSION.tar.xz | shasum -a 256
# curl -sL https://github.com/kipyin/gitee-cli/releases/download/vVERSION/gitee-x86_64-apple-darwin-vVERSION.tar.xz | shasum -a 256

class Gitee < Formula
  desc "A gh-like command-line client for Gitee"
  homepage "https://github.com/kipyin/gitee-cli"
  version "0.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kipyin/gitee-cli/releases/download/v#{version}/gitee-aarch64-apple-darwin-v#{version}.tar.xz"
      sha256 "be02e30ce1bf92afa7572ea1818b6516967cd166913b5e51c208f85b3eca5e39"
    else
      url "https://github.com/kipyin/gitee-cli/releases/download/v#{version}/gitee-x86_64-apple-darwin-v#{version}.tar.xz"
      sha256 "4a54441332d07bd06481bdb47d3b9b5b795b445e28165878afd22bc9d07ac515"
    end
  end

  def install
    # Homebrew auto-cds into the single top-level dir the tarball extracts to,
    # so the binary is already in the cwd here.
    bin.install "gitee"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gitee --version")
  end
end
