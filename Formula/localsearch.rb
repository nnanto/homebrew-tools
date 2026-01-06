class Localsearch < Formula
  desc "A fast, local search engine with vector embeddings and SQLite storage"
  homepage "https://github.com/nnanto/localsearch"
  version "1.1.0"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/nnanto/localsearch/releases/download/1.1.0/localsearch-macos-aarch64.tar.gz"
      sha256 "sha256_for_aarch64_tarball"
    else
      url "https://github.com/nnanto/localsearch/releases/download/1.1.0/localsearch-macos-x86_64.tar.gz"
      sha256 "sha256_for_x86_64_tarball"
    end
  elsif OS.linux?
    url "https://github.com/nnanto/localsearch/releases/download/1.1.0/localsearch-linux-x86_64.tar.gz"
    sha256 "sha256_for_linux_tarball"
  end

  def install
    bin.install "localsearch"
    
    # Install documentation if present
    doc.install "README.md" if File.exist?("README.md")
    (share/"licenses"/name).install "LICENSE" if File.exist?("LICENSE")
  end

  test do
    # Test that the binary runs and shows help
    assert_match "localsearch", shell_output("#{bin}/localsearch --help")
    
    # Test version output
    assert_match version.to_s, shell_output("#{bin}/localsearch --version")
  end
end