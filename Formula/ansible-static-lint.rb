class AnsibleStaticLint < Formula
  desc "Fast static linter for Ansible playbooks and roles, no Python required"
  homepage "https://github.com/arhuman/ansible-static-lint"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arhuman/ansible-static-lint/releases/download/v0.6.0/ansible-static-lint_0.6.0_darwin_arm64.tar.gz"
      sha256 "6ec9e051c06c87aa351b427247c023626fd6aeca764476c392c2175fc2dbc97d"
    else
      url "https://github.com/arhuman/ansible-static-lint/releases/download/v0.6.0/ansible-static-lint_0.6.0_darwin_amd64.tar.gz"
      sha256 "d156f68e2ca50db592d864910a06e55f9166d59d241f0fd4db330de65bb1c516"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/arhuman/ansible-static-lint/releases/download/v0.6.0/ansible-static-lint_0.6.0_linux_arm64.tar.gz"
      sha256 "e969a1c908fefca9aae8e21c656ed0b3cf94d98aace4b15b931ed93d92bcf74d"
    else
      url "https://github.com/arhuman/ansible-static-lint/releases/download/v0.6.0/ansible-static-lint_0.6.0_linux_amd64.tar.gz"
      sha256 "c0ccc7f79934fe599ca22292501844d29e845bad7964b862dd1e1370d5dad25d"
    end
  end

  def install
    bin.install "astl"
  end

  test do
    assert_match "v0.6.0", shell_output("#{bin}/astl --version")
  end
end
