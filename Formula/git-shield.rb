class GitShield < Formula
  desc "Global Gitleaks Git pre-commit hook to prevent secrets in commits"
  homepage "https://github.com/anhducmata/git-shield"
  url "https://raw.githubusercontent.com/anhducmata/git-shield/main/install-gitleaks-hook.sh"
  version "1.0.0"
  sha256 "<INSERT_SHA256_HERE>"
  license "MIT"

  def install
    bin.install "install-gitleaks-hook.sh" => "git-shield"
  end

  def caveats
    <<~EOS
      Run `git-shield` to install the global pre-commit hook.

      Apply it to existing repositories using:
        git init
    EOS
  end
end
