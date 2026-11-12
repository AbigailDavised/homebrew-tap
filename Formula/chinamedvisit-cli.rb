class ChinamedvisitCli < Formula
  desc "China Tier-3A hospital medical cost estimator vs US/UK & clinic finder"
  homepage "https://chinamedvisit.com"
  url "https://registry.npmjs.org/chinamedvisit-cli/-/chinamedvisit-cli-1.0.1.tgz"
  sha256 "488893ce884752cb4e4f2962b5de61be3c01272f5438c46904f1dc130f0a47f6"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/chinamedvisit", "--help"
  end
end
