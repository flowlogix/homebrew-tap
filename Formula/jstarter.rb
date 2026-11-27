# Generated with JReleaser 1.27.0 at 2026-11-26T22:35:06.382933-06:00

class Jstarter < Formula
  desc "Java and Jakarta EE project starter by Flow Logix"
  homepage "https://start.flowlogix.com/"
  version "0.5"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://nexus.flowlogix.com/repository/maven-releases/com/flowlogix/jstarter/0.5/jstarter-0.5-osx-aarch64.zip"
    sha256 "b00706b97fa321142421cedafc5ceb250ecd22593f2d2b6a5f7be399df2788d9"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/jstarter" => "jstarter"
  end

  test do
    output = shell_output("#{bin}/jstarter --version")
    assert_match "0.5", output
  end
end
