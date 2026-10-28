class Appsassin < Formula
  desc "Find and kill forgotten apps and stray processes on macOS"
  homepage "https://github.com/mikemich/appsassin"
  url "https://github.com/mikemich/appsassin/releases/download/v0.3.0/appsassin-macos.tar.gz"
  sha256 "61c1e085372e167ce6f25fa20ff0d8bb065a3fb4b594902595575813bdb91b85"
  license "MIT"

  depends_on macos: :monterey

  def install
    bin.install "appsassin"
  end

  test do
    assert_match "appsassin #{version}", shell_output("#{bin}/appsassin version")
  end
end
