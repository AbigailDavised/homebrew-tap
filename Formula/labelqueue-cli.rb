class LabelqueueCli < Formula
  desc "Avery printable shipping & return address label layout generator"
  homepage "https://labelqueue.com"
  url "https://registry.npmjs.org/labelqueue-cli/-/labelqueue-cli-1.0.0.tgz"
  sha256 "91ba48231f096d47e3584ab43419eb1c6ccd4c01e592999fda9d4f50cbb93dfb"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/labelqueue", "--help"
  end
end
