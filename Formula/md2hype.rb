class Md2hype < Formula
  desc 'A text converter from markdown to html, using unified.js and Bun.'
  version '0.0.2'
  homepage 'https://github.com/shotanue/md2hype'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/shotanue/md2hype/releases/download/0.0.2/md2hype-darwin-arm64'
      sha256 'a36f8570a6c7e00cc7db05ec8f7ff0440e7939d7c393388da0287782d127c912'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/shotanue/md2hype/releases/download/0.0.2/md2hype-darwin-amd64'
      sha256 'c9cede3cab6e7195abef0507b283a72d544d114841aaa37ec167b7cd59a3897b'
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url 'https://github.com/shotanue/md2hype/releases/download/0.0.2/md2hype-linux-amd64'
      sha256 '616ba4f5e1ccb776ec4f1e250c32d125c9cb4e752195c622c7cca0f106c06c6e'
    end
  end

  head do
    url 'https://github.com/shotanue/md2hype.git'
  end

  def install
    bin.install Dir["*"].first => "md2hype"
  end
end
