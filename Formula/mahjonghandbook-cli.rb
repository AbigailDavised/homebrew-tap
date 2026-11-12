class MahjonghandbookCli < Formula
  desc "American NMJL, Chinese MCR and Japanese Riichi mahjong scoring rules"
  homepage "https://mahjonghandbook.com"
  url "https://registry.npmjs.org/mahjonghandbook-cli/-/mahjonghandbook-cli-1.0.0.tgz"
  sha256 "5c4d434068bfa2a05388ead156c8002f85ea45f88cc516b73ec3c98ee87f0bd3"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/mahjonghandbook", "--help"
  end
end
