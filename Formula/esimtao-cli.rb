class EsimtaoCli < Formula
  desc "Global travel eSIM data usage, iPhone/Android compatibility & pricing calculator"
  homepage "https://esimtao.com"
  url "https://registry.npmjs.org/esimtao-cli/-/esimtao-cli-1.0.1.tgz"
  sha256 "de6dff9ee264eb1c63adb343db3c7856207dbda15928143d00971974023ab18c"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/esimtao", "--help"
  end
end
