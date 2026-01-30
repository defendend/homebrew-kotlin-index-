class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.9.2/ast-index-3.9.2-darwin-arm64.tar.gz"
  sha256 "7f64f9b6526f25c68cf6f5bfc82e331453b12299a20971c0e09ad28b2678f1d8"
  license "MIT"
  version "3.9.2"

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.9.2", shell_output("#{bin}/ast-index version")
  end
end
