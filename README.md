# My vim set-up

Prefered package installer: pathogen
mkdir -p ~/.vim/bundle ~/.vim/autoload
place .vimrc file into home

## Package installer:
Install Pathogen:
    curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

## Themes:
Clone gruvbox theme repo into ~/.vim/bundle
    git clone https://github.com/morhetz/gruvbox

## Add-ons:
**YouCompleteMe** intellisense
Follow install instructions:
    https://github.com/ycm-core/YouCompleteMe

**python-mode** PyLint syntax highlighting
Clone python-mode repo into ~/.vim/bundle
    git clone --recurse-submodules https://github.com/python-mode/python-mode.git

**python-pep8-indent** pep8 indent
Clone python-pep7-indent into ~/.vim/bundle
     git clone https://github.com/Vimjas/vim-python-pep8-indent.git

**airline** status bar
clone airline and aireline-themes into ~/.vim/bunlde
    git clone https://github.com/vim-airline/vim-airline
    git clone https://github.com/vim-airline/vim-airline-themes

**commentary** comment block
    cd ~/.vim/bundle
    git clone https://github.com/tpope/vim-commentary
    
# NeoVim set up
Use Lunarvim configuration by Chris@Machine

Include the following additional plugins in the config.lua file:

-- Additional Plugins
lvim.plugins = {
    -- Themes
    {"folke/tokyonight.nvim"}, {
        "ray-x/lsp_signature.nvim",
        config = function() require"lsp_signature".on_attach() end,
        event = "InsertEnter"
    },
    {'morhetz/gruvbox'},
    {'lvim-tech/lvim-colorscheme'},
    -- Tmux intergration
    {'christoomey/vim-tmux-navigator'},
    -- ALE
    {'dense-analysis/ale'},
    -- Indent Lines
    {'lukas-reineke/indent-blankline.nvim'},
    -- Dad bod UI for tables (SQL/DF etc)
    {'kristijanhusak/vim-dadbod-ui'},
    {'tpope/vim-dadbod'},
    -- Ipython support for Viz
    {'bfredl/nvim-ipy'} -- "IPython to open console <F5> to run selection"
}
