# Regenerate sha256 on the next release:
# curl -sL https://github.com/kipyin/gitee-cli/releases/download/vVERSION/gitee-aarch64-apple-darwin-vVERSION.tar.xz | shasum -a 256
# curl -sL https://github.com/kipyin/gitee-cli/releases/download/vVERSION/gitee-x86_64-apple-darwin-vVERSION.tar.xz | shasum -a 256

class Gitee < Formula
  desc "A gh-like command-line client for Gitee"
  homepage "https://github.com/kipyin/gitee-cli"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kipyin/gitee-cli/releases/download/v#{version}/gitee-aarch64-apple-darwin-v#{version}.tar.xz"
      sha256 "50aeadbdeebcef3587d1d811311231b5e60c5c5e108c9f89791c0ddf4148ebbe"
    else
      url "https://github.com/kipyin/gitee-cli/releases/download/v#{version}/gitee-x86_64-apple-darwin-v#{version}.tar.xz"
      sha256 "a720ad5dc903a04fa9e759183514ad80a2ac070343c4ff8a4f1e66773d56e46d"
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
