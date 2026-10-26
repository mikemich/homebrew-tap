class Bugscan < Formula
  include Language::Python::Virtualenv

  desc "Find bugs in any folder: secrets, static analysis, vulnerable deps, fuzzing"
  homepage "https://github.com/mikemich/bugscan"
  url "https://github.com/mikemich/bugscan/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "934eb30b94f1f32cc32ff912998b290187b13f17bfe9c8cf1ba0692bcd9245cd"
  license "MIT"

  depends_on "gitleaks"
  depends_on "osv-scanner"
  depends_on "python@3.14"
  depends_on "semgrep"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "bugscan #{version}", shell_output("#{bin}/bugscan --version")
    (testpath/"bad.py").write "def broken(:\n"
    output = shell_output("#{bin}/bugscan scan -t #{testpath} --stages lint --fail-on none --out #{testpath}/out")
    assert_match "1 new", output
  end
end
