{
  programs.vim = {
    enable = true
    extraConfig = ''
      " Line
      set number

      " Tab
      set expandtab               " tab to space
      set tabstop=2               " tab size
      set shiftwidth=2
      set smarttab
      set autoindent
      set smartindent

      " Colors
      set termguicolors
      set background=dark
      colorscheme default
      let &t_ut = ""
      let &t_8f = "\e[38;2;%lu;%lu;%lum"
      let &t_8b = "\e[48;2;%lu;%lu;%lum"

      " Misc
      set encoding=utf-8          " utf-8 encoding
    ''
  }
}
