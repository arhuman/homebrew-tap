class AnsibleStaticLint < Formula
  desc "Fast static linter for Ansible playbooks and roles, no Python required"
  homepage "https://github.com/arhuman/ansible-static-lint"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arhuman/ansible-static-lint/releases/download/v0.2.0/ansible-static-lint_0.2.0_darwin_arm64.tar.gz"
      sha256 "76d590a3284584b9cb61f0b81e1387857c469862a46104f34e65179a9ccf171d"
    else
      url "https://github.com/arhuman/ansible-static-lint/releases/download/v0.2.0/ansible-static-lint_0.2.0_darwin_amd64.tar.gz"
      sha256 "7cd2124bc25a1c223bc59b9f335a07009f5964120036488c818c753a686c298e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/arhuman/ansible-static-lint/releases/download/v0.2.0/ansible-static-lint_0.2.0_linux_arm64.tar.gz"
      sha256 "be26b75a2bec5aaf00fa66dcfd8b006215a12ca4f4e5fa2255a6a67cc773336f"
    else
      url "https://github.com/arhuman/ansible-static-lint/releases/download/v0.2.0/ansible-static-lint_0.2.0_linux_amd64.tar.gz"
      sha256 "2910ad9cc68d04c2d015be0b7f140a619021d32c33ea9a335b2fc21d9835d52a"
    end
  end

  def install
    bin.install "astl"
  end

  test do
    assert_match "v0.2.0", shell_output("#{bin}/astl --version")
  end
end
