class Appsassin < Formula
  desc "Find and kill forgotten apps and stray processes on macOS"
  homepage "https://github.com/mikemich/appsassin"
  url "https://github.com/mikemich/appsassin/releases/download/v0.1.0/appsassin-macos.tar.gz"
  version "0.1.0"
  sha256 "6777a9ad7f105c4b4f77a9571edb9e1cc9a1dce9cdd9a1efb218c8854e741a64"
  license "MIT"

  depends_on macos: :monterey

  def install
    bin.install "appsassin"
  end

  test do
    assert_match "appsassin #{version}", shell_output("#{bin}/appsassin version")
  end
end
