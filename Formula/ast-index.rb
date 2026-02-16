class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.16.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.16.1/ast-index-v3.16.1-darwin-arm64.tar.gz"
      sha256 "75e658b39b5985fe9b1ebad47f4a0ded37d8d2dc42855a0d4c27687c180d1519"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.16.1/ast-index-v3.16.1-darwin-x86_64.tar.gz"
      sha256 "ed578ebabe7f2daec7582a81363bfe072854ddb81546e5ed656f5ff6a4cd7ba7"
    end
  end

  on_linux do
    url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.16.1/ast-index-v3.16.1-linux-x86_64.tar.gz"
    sha256 "e6df23ce8a0d83bde3736111ea7689cddb08934e5932ad12702af173702a7f19"
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.16.1", shell_output("#{bin}/ast-index version")
  end
end
