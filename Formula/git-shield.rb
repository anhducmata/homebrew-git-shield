class GitShield < Formula
  desc "Global Gitleaks Git pre-commit hook to prevent secrets in commits"
  homepage "https://github.com/anhducmata/git-shield"
  url "https://github.com/anhducmata/git-shield/releases/download/v1.0.0/install-gitleaks-hook.sh"
  version "1.0.0"
  sha256 "9ed3462ec525a26964c83b04b954914013ce849743460ec8c104ec1473d25eef"
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
