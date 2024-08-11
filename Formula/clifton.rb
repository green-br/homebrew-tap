# clifton.rb
class Clifton < Formula
  desc "SSH connection manager"
  homepage "https://github.com/isambard-sc/clifton"
  head "https://github.com/isambard-sc/clifton.git", branch: "master"
  url "https://github.com/isambard-sc/clifton.git",
      tag: "0.1.1",
      revision: "2733fbdddb6d0fdaf0a53592dd5355c3be9d0956"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match(/^clifton /, shell_output("#{bin}/clifton --version"))
  end
end
