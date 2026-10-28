class Appsassin < Formula
  desc "Find and kill forgotten apps and stray processes on macOS"
  homepage "https://github.com/mikemich/appsassin"
  url "https://github.com/mikemich/appsassin/releases/download/v0.2.0/appsassin-macos.tar.gz"
  sha256 "c1e1cc145fb12150ca06ba6a7d738b0af5c73d17db813c92617f133230ea5e57"
  license "MIT"

  depends_on macos: :monterey

  def install
    bin.install "appsassin"
  end

  test do
    assert_match "appsassin #{version}", shell_output("#{bin}/appsassin version")
  end
end
