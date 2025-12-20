class Macblock < Formula
  include Language::Python::Virtualenv

  desc "Local DNS sinkhole for macOS (dnsmasq + PF)"
  homepage "https://github.com/SpyicyDev/macblock"

  # TODO: add stable url + sha256 when you tag releases.
  head "https://github.com/SpyicyDev/macblock.git", branch: "main"

  depends_on "python@3.12"
  depends_on "dnsmasq"

  def install
    virtualenv_install_with_resources
  end

  def caveats
    <<~EOS
      Next:
        sudo macblock install

      This will install PF redirection and launchd jobs.
    EOS
  end

  test do
    system bin/"macblock", "--version"
  end
end
