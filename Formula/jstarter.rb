# Generated with JReleaser 1.27.0 at 2026-11-27T00:29:06.011724-06:00

class Jstarter < Formula
  desc "Java and Jakarta EE project starter by Flow Logix"
  homepage "https://start.flowlogix.com/"
  version "0.5.3"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://dl.flowlogix.com/releases/jstarter/0.5.3/jstarter-0.5.3-osx-aarch64.zip"
    sha256 "9add6470d7497ae4f082c83df6de185f4f185d38b304bd8931f36593abf052ac"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/jstarter" => "jstarter"
  end

  test do
    output = shell_output("#{bin}/jstarter --version")
    assert_match "0.5.3", output
  end
end
