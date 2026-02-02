class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.10.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.10.0/ast-index-v3.10.0-darwin-arm64.tar.gz"
      sha256 "cbc042a899545a5ebb51c53d3bebb1062a454eec371c50c151ffb5c855792597"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.10.0/ast-index-v3.10.0-darwin-x86_64.tar.gz"
      sha256 "0e7101dc3692c819754cdab7ac45b608ab52ee0ebfe477e5364191171dd1fc2e"
    end
  end

  on_linux do
    url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.10.0/ast-index-v3.10.0-linux-x86_64.tar.gz"
    sha256 "1a3c82652e66fdb512f138ed365a4e00c1e6b0d619927f238d50691d6cb1dbc0"
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.10.0", shell_output("#{bin}/ast-index version")
  end
end
