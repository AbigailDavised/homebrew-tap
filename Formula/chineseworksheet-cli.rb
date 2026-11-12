class ChineseworksheetCli < Formula
  desc "Printable Chinese handwriting worksheet grid geometry, stroke rules & HSK analyzer"
  homepage "https://chineseworksheet.com"
  url "https://registry.npmjs.org/chineseworksheet-cli/-/chineseworksheet-cli-1.0.1.tgz"
  sha256 "99a78c4f3d552fd3dea596262fc8fd6e5cd9d5b33ae109756bf1f67ad3983aea"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/chineseworksheet", "--help"
  end
end
