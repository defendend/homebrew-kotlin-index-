class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.10.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.10.3/ast-index-v3.10.3-darwin-arm64.tar.gz"
      sha256 "7ced37b64bdf3d7a40c8db66185180a2f417cc0a6fef31f5420ee75ea8a9ef19"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.10.3/ast-index-v3.10.3-darwin-x86_64.tar.gz"
      sha256 "e5735f6c3a3d6d76a7837db2acbc830afdfb94301843755a9872e110cf6c4c8d"
    end
  end

  on_linux do
    url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.10.3/ast-index-v3.10.3-linux-x86_64.tar.gz"
    sha256 "9d96c7fbb5e6d68be1ec1540ebc3177b61555fefb48f0d7b6c88201fe929a72c"
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.10.3", shell_output("#{bin}/ast-index version")
  end
end
