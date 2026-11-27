# Generated with JReleaser 1.27.0 at 2026-11-26T22:54:31.427195-06:00

class Jstarter < Formula
  desc "Java and Jakarta EE project starter by Flow Logix"
  homepage "https://start.flowlogix.com/"
  version "0.5.1"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://dl.flowlogix.com/releases/jstarter/0.5.1/jstarter-0.5.1-osx-aarch64.zip"
    sha256 "9f802cab8c6a35b2cfec23a064bbf088be96cff7774a8c07565f3d036b8545a9"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/jstarter" => "jstarter"
  end

  test do
    output = shell_output("#{bin}/jstarter --version")
    assert_match "0.5.1", output
  end
end
