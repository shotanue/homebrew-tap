class Markdot < Formula
  desc 'Markdown driven dotfiles.'
  version '0.0.5'
  homepage 'https://github.com/shotanue/markdot'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/shotanue/markdot/releases/download/0.0.5/markdot-darwin-arm64'
      sha256 '1a4608de506c9718a908d2e0b097536906dc4a49fa6c504615aacee03ec0d5d1'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/shotanue/markdot/releases/download/0.0.5/markdot-darwin-amd64'
      sha256 '933a886496ad40cfcf7dcf3198f8c7d02613e967f47c038345ccffed943e3cc3'
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url 'https://github.com/shotanue/markdot/releases/download/0.0.5/markdot-linux-amd64'
      sha256 '28274f5b52d17cd913aab451a6bc391c67e8e83e26be02650aa82eb4548daeb5'
    end
  end

  head do
    url 'https://github.com/shotanue/markdot.git'
  end

  def install
    bin.install Dir["*"].first => "markdot"
  end
end
