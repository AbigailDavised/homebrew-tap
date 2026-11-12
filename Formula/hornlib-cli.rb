class HornlibCli < Formula
  desc "French Horn F/Bb double horn fingering charts, transposition & acoustics"
  homepage "https://hornlib.com"
  url "https://registry.npmjs.org/hornlib-cli/-/hornlib-cli-1.0.3.tgz"
  sha256 "55c687b2860fa9982fe7244431d72b4b35ccf3febb8b38641da9e61e26451000"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/hornlib", "--help"
  end
end
