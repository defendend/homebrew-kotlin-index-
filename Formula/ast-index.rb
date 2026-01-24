class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.9.1/ast-index-3.9.1-darwin-arm64.tar.gz"
  sha256 "47d8a2daa1e0ae723315394c666fd33a61eabdc810a4429c7c6e960e282d550b"
  license "MIT"
  version "3.9.1"

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.9.1", shell_output("#{bin}/ast-index version")
  end
end
