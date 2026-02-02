class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.10.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.10.4/ast-index-v3.10.4-darwin-arm64.tar.gz"
      sha256 "59e6430d7e6fde7ca492a1db25faf6f0a491da022dfb32be04a576da8024f63e"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.10.4/ast-index-v3.10.4-darwin-x86_64.tar.gz"
      sha256 "153e14e7cb7c62b6454b39f6ed566f6d4048963cecb35558b947c31d40f70745"
    end
  end

  on_linux do
    url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.10.4/ast-index-v3.10.4-linux-x86_64.tar.gz"
    sha256 "f067fc8993fdd681f252fad56e4ca303b47a200a91b4e0324af00e4335800ea2"
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.10.4", shell_output("#{bin}/ast-index version")
  end
end
