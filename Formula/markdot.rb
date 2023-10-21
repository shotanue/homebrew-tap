class Markdot < Formula
  desc 'Markdown driven dotfiles.'
  version '0.0.6'
  homepage 'https://github.com/shotanue/markdot'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/shotanue/markdot/releases/download/0.0.6/markdot-darwin-arm64'
      sha256 'aada74c22a819ff6251fbfca67b4993ae04b6c409e12c74cfd322801dfe6f6f9'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/shotanue/markdot/releases/download/0.0.6/markdot-darwin-amd64'
      sha256 'a42603b551ca68c77d07cc871c4073691de70af27f6b32ff4ac4ca46a34708cd'
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url 'https://github.com/shotanue/markdot/releases/download/0.0.6/markdot-linux-amd64'
      sha256 '1cc05caabcf61d0f64fbd0c0e27ef6371024517c9c2bda35b779855c7a950ffa'
    end
  end

  head do
    url 'https://github.com/shotanue/markdot.git'
  end

  def install
    bin.install Dir["*"].first => "markdot"
  end
end
