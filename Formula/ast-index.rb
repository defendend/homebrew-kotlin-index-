class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.9.3/ast-index-3.9.3-darwin-arm64.tar.gz"
  sha256 "30fdefc4f7abd5db8399d2e85cb9fe89b0fa86f8a7da4b1da82fd4a7ab0f3070"
  license "MIT"
  version "3.9.3"

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.9.3", shell_output("#{bin}/ast-index version")
  end
end
