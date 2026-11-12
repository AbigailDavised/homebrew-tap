class LocatepicCli < Formula
  desc "Visual OSINT geolocation forensic clues & EXIF photo metadata scanner"
  homepage "https://locatepic.com"
  url "https://registry.npmjs.org/locatepic-cli/-/locatepic-cli-1.0.0.tgz"
  sha256 "55e62e75ad1d82880dc0d8a61cd3616617530d1c78b6a6c1c4d8ffc65b2715e0"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/locatepic", "--help"
  end
end
