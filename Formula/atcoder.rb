class Atcoder < Formula
  desc "Unofficial CLI for AtCoder users"
  homepage "https://github.com/sachaos/atcoder"

  url "https://github.com/sachaos/atcoder/archive/v0.2.5.tar.gz"
  sha256 "056fb0fc1a3f81eade42941079ce11c212c49e585ccfeaf859a9db62eea6c2ad"
  head "https://github.com/sachaos/atcoder.git"

  depends_on "go" => :build

  def install
    (buildpath/"src/github.com/sachaos/atcoder").install buildpath.children
    cd "src/github.com/sachaos/atcoder" do
      system "go", "build", "-o", bin/"atcoder"
    end
  end
end
