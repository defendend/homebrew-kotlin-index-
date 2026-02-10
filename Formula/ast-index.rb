class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.12.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.12.0/ast-index-v3.12.0-darwin-arm64.tar.gz"
      sha256 "e687b16eaace273b81c153bcca2a23bb26017098054ed556e72921a18862770c"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.12.0/ast-index-v3.12.0-darwin-x86_64.tar.gz"
      sha256 "642585e575cf6ac8cebc392ba0db2d3cd99bdc968b6f8a3aa2416c24dff2cd6a"
    end
  end

  on_linux do
    url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.12.0/ast-index-v3.12.0-linux-x86_64.tar.gz"
    sha256 "9dbf954d988b351e90c67e0d475257ed31e3f3808807c10c8f734a39e056087a"
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.12.0", shell_output("#{bin}/ast-index version")
  end
end
