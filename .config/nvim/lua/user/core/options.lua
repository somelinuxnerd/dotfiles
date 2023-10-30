-- --------------------------------
--  Set default option values
-- --------------------------------

local opt = vim.opt

if #vim.api.nvim_list_uis() == 0 then
    opt.confirm = false
    opt.more = false
    opt.cmdheight = 99
    return
end

local options = {

    -- Searching
    hlsearch      = true,                                    	-- highlight all matches for the last used search pattern
    incsearch     = true,                                   	-- show match for partly typed search command
    ignorecase    = true,                                  		-- ignore case when using a search pattern
    smartcase     = true,                                   	-- override 'ignorecase' when pattern has upper case characters

    -- Splits
    splitbelow    = true,                                  		-- a new window is put below the current one                (default = false)
    splitright    = true,                                  		-- a new window is put right of the current one             (default = false)

    -- Tabs and Indentation
    autoindent    = true,                                  		-- automatically set the indent of a new line               (default = true)
    expandtab     = false,                                  	-- expand <Tab> to spaces in Insert mode                    (default = false)
    shiftwidth    = 4,                                     		-- number of spaces used for each step of (auto)indent      (default = 8)
    smartindent   = true,                                 		-- do clever autoindenting                                  (default = false)
    smarttab      = true,                                    	-- a <Tab> in an indent inserts 'shiftwidth' spaces         (default = true)
    softtabstop   = 0,                                    		-- if non-zero, number of spaces to insert for a <Tab>      (default = 0)
    tabstop       = 4,                                        	-- number of spaces a <Tab> in the text stands for          (default = 8)

    -- Files
    backup        = false,                                     	-- disable backups when overwriting a file
    swapfile      = false,                                   	-- use a swap file for this buffer
    undofile      = true,                                    	-- automatically save and restore undo history
    writebackup   = false,                                		-- disable backups while file is being written

    -- Encoding and Formats
    encoding      = "utf-8",                                 	-- set internal encoding
    fileencoding  = "utf-8",                             		-- set encoding used when writing to a file.
    fileformats   = "unix,dos,mac",                       		-- file formats used when editing a file (in order of priority)

    -- Clipboard
    clipboard     = "unnamedplus",                          	-- "unnamed" to use the * register like unnamed register

    -- Mouse
    mouse         = "a",                                        -- list of flags for using the mouse

    -- User Interface
    autoread      = true,                                   	-- automatically read a file when it was modified outside of Vim
    cmdheight     = 1,											-- number of lines used for the command-line
    completeopt   = { "menuone", "noselect" },					-- whether to use a popup menu for insert mode completion
	hidden        = false,                                  	-- don't unload a buffer when no longer shown in a window
	laststatus    = 3,                                     		-- 0, 1, 2 or 3; when to use a status line for the last window
    lazyredraw    = true,                                  		-- don't redraw while executing macros
    listchars     = { eol = "↲", tab = "▸ ", trail = "·" },		-- list of strings used for list mode
    number        = true,                                   	-- show the line number for each line
    numberwidth   = 4,                                    		-- minimal number of columns to use for the line number
    pumheight     = 15,                                     	-- maximum height of the popup menu
    scrolloff     = 9,                                      	-- number of screen lines to show around the cursor
    showmode      = true,                                    	-- display the current mode below the status line
    showtabline   = 0,                                    		-- 0, 1 or 2; when to use a tab pages line
    sidescrolloff = 9,                                  		-- minimal number of columns to keep left and right of the cursor
    signcolumn    = "yes",                                 		-- enable sign column
    showcmd       = false,										-- disable showing commands on the right side of the command line as they are typed
    termguicolors = true,                               		-- use GUI colors for the terminal
    title         = true,										-- set the title of window to the value of the titlestring
	whichwrap     = "b,s,h,l,<,>,[,]",                      	-- list of flags specifying which commands wrap to another line     (default = "b,s")
    wildmenu      = true,                                    	-- enables "enhanced mode" of command-line completion
    wrap          = false,                                      -- long lines wrap
    writeany      = true,                                    	-- make user use :w! to write to files that require permissions the user does not possess

    -- complete     = ".,b,u,]",                               -- specifies how Insert mode completion works for CTRL-N and CTRL-P
    -- magic        = true,                                    -- enable looser regular expressions
    -- switchbuf    = { "useopen", "usetab", "newtab" },      	-- buffer switching behavior
    -- wildignore   = "*.git,*.hg,*.svn,*.pyc",		       		-- ignore matching files

}

for key, val in pairs(options) do
    opt[key] = val
end

opt.shortmess:append "I"