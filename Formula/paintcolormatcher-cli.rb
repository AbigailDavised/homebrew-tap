class PaintcolormatcherCli < Formula
  desc "Sherwin-Williams & Benjamin Moore paint color delta-E matcher"
  homepage "https://paintcolormatcher.com"
  url "https://registry.npmjs.org/paintcolormatcher-cli/-/paintcolormatcher-cli-1.0.0.tgz"
  sha256 "271a13e468a2a11159910c3d209c99153064eaa0ee646a3ff91e3a795edbccf0"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/paintcolormatcher", "--help"
  end
end
