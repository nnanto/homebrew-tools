class Localsearch < Formula
  desc "A fast, local search engine with vector embeddings and SQLite storage"
  homepage "https://github.com/nnanto/localsearch"
  version "1.1.0"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/nnanto/localsearch/releases/download/v#{version}/localsearch-macos-aarch64.tar.gz"
      sha256 "SHA256_FOR_AARCH64_TARBALL"  # Replace with actual SHA256 after release
    else
      url "https://github.com/nnanto/localsearch/releases/download/v#{version}/localsearch-macos-x86_64.tar.gz"
      sha256 "SHA256_FOR_X86_64_TARBALL"  # Replace with actual SHA256 after release
    end
  elsif OS.linux?
    url "https://github.com/nnanto/localsearch/releases/download/v#{version}/localsearch-linux-x86_64.tar.gz"
    sha256 "SHA256_FOR_LINUX_TARBALL"  # Replace with actual SHA256 after release
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