class ZshHistorySubstringSearch < Formula
  desc "Zsh port of Fish shell's history search"
  homepage "https://github.com/zsh-users/zsh-history-substring-search"
  url "https://github.com/zsh-users/zsh-history-substring-search/archive/v1.0.0.tar.gz"
  sha256 "2b25a06c6d98f8443cfe33187cd31850febaf243c67e551a70cc0030d18443e7"

  bottle :unneeded

  def install
    inreplace "README.md", "source zsh-history", "source #{opt_prefix}/zsh-history"
    zsh_function.install "zsh-history-substring-search.zsh" => "zsh-history-substring-search"
  end

  def caveats; <<-EOS.undent
    Load this script into your interactive ZSH session:

      autoload -Uz zsh-history-substring-search && zsh-history-substring-search

    For more setup instructions:
      more "#{opt_prefix}/README.md"
    EOS
  end
end
