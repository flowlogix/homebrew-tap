# Generated with JReleaser 1.27.0 at 2026-11-26T23:24:39.103497-06:00

class Jstarter < Formula
  desc "Java and Jakarta EE project starter by Flow Logix"
  homepage "https://start.flowlogix.com/"
  version "0.5.2"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://dl.flowlogix.com/releases/jstarter/0.5.2/jstarter-0.5.2-osx-aarch64.zip"
    sha256 "9e752ac9c6edaef24ceb8e171b0174b9bff347dff0549664d7a62f953cf48b05"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/jstarter" => "jstarter"
  end

  test do
    output = shell_output("#{bin}/jstarter --version")
    assert_match "0.5.2", output
  end
end
