class CardworthscannerCli < Formula
  desc "TCG Pokemon, MTG, Yugioh card market pricing & condition grading"
  homepage "https://cardworthscanner.com"
  url "https://registry.npmjs.org/cardworthscanner-cli/-/cardworthscanner-cli-1.0.1.tgz"
  sha256 "4290f847b2fa46e5054bf94156db723503c1dcb0d021df3b4e8b07254bc51bd0"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/cardworthscanner", "--help"
  end
end
