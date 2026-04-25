#
# DO NOT INSTALL DIRECTLY — this is the SOURCE TEMPLATE.
# The publish workflow substitutes URL + sha256 + version, then commits the
# rendered file into agentscore/homebrew-tap on each release.
#
# Placeholders:
#   https://registry.npmjs.org/@agent-score/pay/-/pay-0.1.0-rc.4.tgz    — npm tarball URL
#   ed498dc4825ce81ed67c6c4ce6cbbdf553269e036a718fd9501a3b4bf4019a6b — sha256 of the tarball
#   0.1.0-rc.4         — bare version string (without leading v)
#
class AgentscorePay < Formula
  desc "CLI wallet for one-shell-command agent payments (x402 + MPP)"
  homepage "https://agentscore.sh"
  url "https://registry.npmjs.org/@agent-score/pay/-/pay-0.1.0-rc.4.tgz"
  sha256 "ed498dc4825ce81ed67c6c4ce6cbbdf553269e036a718fd9501a3b4bf4019a6b"
  version "0.1.0-rc.4"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match(/\d+\.\d+\.\d+/, shell_output("#{bin}/agentscore-pay --version"))
  end
end
