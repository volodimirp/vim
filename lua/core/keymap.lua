local bind = require('core.utils.bind')
local map_cr = bind.map_cr
local map_cu = bind.map_cu
local map_cmd = bind.map_cmd
local map_args = bind.map_args

local plug_map = {
  ['n|«'] = map_cr('NvimTreeToggle'):with_noremap():with_silent(),
  -- ["n|<Leader>F"] = map_cr('NvimTreeFindFile'):with_noremap():with_silent(),
  ['n|tt'] = map_cu('tabnew'):with_noremap():with_silent(),
  -- Commentary
  ['n|÷'] = map_cmd('<Plug>kommentary_line_default'):with_silent(),
  ['v|÷'] = map_cmd('<Plug>kommentary_visual_default'):with_silent(),
  -- Telescope
  ['n|π'] = map_cu('Telescope find_files'):with_noremap():with_silent(),
  ['n|<Leader>p'] = map_cu('Telescope project'):with_noremap():with_silent(),
  ['n|ƒ'] = map_cu('Telescope live_grep'):with_noremap():with_silent(),
  ['n|;'] = map_cu('Telescope oldfiles'):with_noremap():with_silent(),
  -- Spectre
  ['n|<Leader>sg'] = map_cr("lua require('spectre').open()"):with_noremap():with_silent(),
  ['n|<Leader>sf'] = map_cr("lua require('spectre').open_file_search()"):with_noremap():with_silent(),
  -- HlsLens
  ['n|n'] = map_cmd("<Cmd>execute('normal! ' . v:count1 . 'n')<CR><Cmd>lua require('hlslens').start()<CR>"):with_noremap():with_silent(),
  ['n|N'] = map_cmd("<Cmd>execute('normal! ' . v:count1 . 'N')<CR><Cmd>lua require('hlslens').start()<CR>"):with_noremap():with_silent(),
  ['n|*'] = map_cmd("*<Cmd>lua require('hlslens').start()<CR>"):with_noremap(),
  ['n|#'] = map_cmd("#<Cmd>lua require('hlslens').start()<CR>"):with_noremap(),
  ['n|g*'] = map_cmd("g*<Cmd>lua require('hlslens').start()<CR>"):with_noremap(),
  ['n|g#'] = map_cmd("g#<Cmd>lua require('hlslens').start()<CR>"):with_noremap(),
  -- Scroll PageUp/PageDown
  ['n|='] = map_cmd('<C-d>'):with_noremap():with_silent(),
  ['n|-'] = map_cmd('<C-u>'):with_noremap():with_silent(),
  -- Clearing highlighted search
  -- ['n|<Leader><esc>'] = map_cu('noh'):with_noremap():with_silent(),
  -- Move text to left/right
  ['v|<'] = map_cmd('<gv'):with_noremap(),
  ['v|>'] = map_cmd('>gv'):with_noremap(),
  -- Save
  ['n|<C-s>'] = map_cr(':w!'),
  ['i|<C-s>'] = map_cmd('<ESC>:w!<CR>'),
  ['v|<C-s>'] = map_cmd('<ESC>:w!<CR>'),
  -- Move up and down lines with A-down and A-up
  ['n|<A-up>'] = map_cu('m-2'):with_noremap():with_silent(),
  ['n|<A-down>'] = map_cu('m+'):with_noremap():with_silent(),
  ['i|<A-up>'] = map_cmd('<ESC>:m-2<CR>'):with_noremap():with_silent(),
  ['i|<A-down>'] = map_cmd('<ESC>:m+<CR>'):with_noremap():with_silent(),
  ['v|<A-up>'] = map_cmd(':m-2<CR>gv'):with_noremap():with_silent(),
  ['v|<A-down>'] = map_cmd(":m'>+<CR>gv"):with_noremap():with_silent(),
  -- Select all
  ['n|<C-a>'] = map_cmd('<ESC>ggVG<CR>'):with_noremap():with_silent(),
  ['i|<C-a>'] = map_cmd('<ESC>ggVG<CR>'):with_noremap():with_silent(),
  ['v|<C-a>'] = map_cmd('<ESC>ggVG<CR>'):with_noremap():with_silent(),
  -- EasyMotion
  ['n|+'] = map_cr("lua require('hop').hint_words()"):with_noremap():with_silent(),
  -- Tab Prev/Next
  ['n|<A-Left>'] = map_cu('tabprevious'):with_noremap():with_silent(),
  ['n|<A-Right>'] = map_cu('tabnext'):with_noremap():with_silent(),
  -- Go to tab by number
  ['n|1'] = map_cr('1gt'):with_noremap():with_silent(),
  ['n|2'] = map_cr('2gt'):with_noremap():with_silent(),
  ['n|3'] = map_cr('3gt'):with_noremap():with_silent(),
  ['n|4'] = map_cr('4gt'):with_noremap():with_silent(),
  ['n|5'] = map_cr('5gt'):with_noremap():with_silent(),
  -- Lsp mapp work when insertenter and lsp start
  ["n|K"]              = map_cr("Lspsaga hover_doc"):with_noremap():with_silent(),
  ["n|ga"]             = map_cr("Lspsaga code_action"):with_noremap():with_silent(),
  ["v|ga"]             = map_cu("Lspsaga range_code_action"):with_noremap():with_silent(),
  ["n|<leader>f"]      = map_cu("Lspsaga formatting"):with_noremap():with_silent(),
  ["n|gd"]             = map_cr('Lspsaga preview_definition'):with_noremap():with_silent(),
  ["n|gD"]             = map_cmd("<cmd>lua vim.lsp.buf.implementation()<CR>"):with_noremap():with_silent(),
  ["n|gs"]             = map_cr('Lspsaga signature_help'):with_noremap():with_silent(),
  ["n|gr"]             = map_cr('Lspsaga rename'):with_noremap():with_silent(),
  ["n|gh"]             = map_cr('Lspsaga lsp_finder'):with_noremap():with_silent(),
  ["n|gt"]             = map_cmd("<cmd>lua vim.lsp.buf.type_definition()<CR>"):with_noremap():with_silent(),
}

-- if vim.fn.isdirectory(data_dir .. 'lua') ~= 1 then
--   os.execute('mkdir -p '..data_dir .. 'lua')
-- end

bind.nvim_load_mapping(plug_map)
