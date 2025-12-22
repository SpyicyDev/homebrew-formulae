# frozen_string_literal: true

# Homebrew formula for macblock - local DNS sinkhole for macOS
class Macblock < Formula
  include Language::Python::Virtualenv

  desc 'Local DNS sinkhole for macOS using dnsmasq'
  homepage 'https://github.com/SpyicyDev/macblock'

  url 'https://github.com/SpyicyDev/macblock/archive/refs/tags/v0.1.0.tar.gz'
  sha256 'PLACEHOLDER_SHA256'

  head 'https://github.com/SpyicyDev/macblock.git', branch: 'main'

  depends_on :macos
  depends_on 'python@3.12'
  depends_on 'dnsmasq'

  def install
    virtualenv_install_with_resources
  end

  def caveats
    <<~CAVEATS
      To complete installation:
        sudo #{bin}/macblock install
        sudo #{bin}/macblock update
        sudo #{bin}/macblock enable

      To check status:
        #{bin}/macblock status
        #{bin}/macblock doctor

      To uninstall system components:
        sudo #{bin}/macblock uninstall
    CAVEATS
  end

  test do
    assert_match 'macblock', shell_output("#{bin}/macblock --version")
  end
end
