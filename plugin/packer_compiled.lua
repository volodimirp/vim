-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/vova/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/vova/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/vova/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/vova/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/vova/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ale = {
    config = { "\27LJ\2\nÌ\6\0\0\b\0\31\00155\0\0\0006\1\1\0009\1\2\1+\2\1\0=\2\3\1'\2\5\0=\2\4\1)\2\1\0=\2\6\0015\2\t\0005\3\b\0=\3\n\2=\2\a\1)\2\1\0=\2\v\1*\2\0\0=\2\f\1)\2\1\0=\2\r\1'\2\15\0=\2\14\1'\2\17\0=\2\16\0016\2\1\0009\2\18\0029\2\19\0026\4\20\0009\4\21\4'\6\22\0009\a\23\0B\4\3\0A\2\0\0016\2\1\0009\2\18\0029\2\19\0026\4\20\0009\4\21\4'\6\24\0009\a\25\0B\4\3\0A\2\0\0016\2\26\0'\4\27\0B\2\2\0016\2\1\0009\2\2\2)\3\0\0=\3\28\0026\2\1\0009\2\2\2'\3\30\0=\3\29\2K\0\1\0\17.rubocop.yml\22vimrubocop_config\22vimrubocop_keymap\24nvim-ale-diagnostic\frequire\vyellowSautocmd Colorscheme * highlight SpellCap guifg=NONE cterm=undercurl guisp='%s'\bredSautocmd Colorscheme * highlight SpellBad guifg=NONE cterm=undercurl guisp='%s'\vformat\vstring\17nvim_command\bapi\tÔÅ± \21ale_sign_warning\tÔÜà \19ale_sign_error\18ale_set_signs\26ale_maximum_file_size(ale_cache_executable_check_failures\bcpp\1\0\0\1\2\0\0\14clangtidy\23ale_linters_ignore\20ale_disable_lsp\18%s --%linter%\24ale_echo_msg_format\16ale_enabled\6g\bvim\1\0\v\tblue\f#61afef\vviolet\f#a9a1e1\bred\f#e86671\vorange\f#d19a66\ngreen\f#98c379\rdarkblue\f#081633\tcyan\f#56b6c2\vyellow\f#e0af68\afg\f#abb2bf\abg\f#282c34\fmagenta\f#c678ddÄÄÄ\1\0" },
    loaded = true,
    path = "/Users/vova/.local/share/nvim/site/pack/packer/start/ale"
  },
  ["auto-session"] = {
    config = { "\27LJ\2\n∫\1\0\0\a\0\t\0\0156\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\a\0009\4\4\0'\5\5\0009\6\6\0&\4\6\4=\4\b\3B\1\2\1K\0\1\0\26auto_session_root_dir\1\0\1\25auto_restore_enabled\1\rpath_sep\fsession\14cache_dir\nsetup\17auto-session\22core.utils.global\frequire\0" },
    loaded = true,
    path = "/Users/vova/.local/share/nvim/site/pack/packer/start/auto-session"
  },
  ["compe-tabnine"] = {
    loaded = true,
    path = "/Users/vova/.local/share/nvim/site/pack/packer/start/compe-tabnine"
  },
  ["dashboard-nvim"] = {
    config = { "\27LJ\2\n\t\0\0\n\0003\0^6\0\0\0'\2\1\0B\0\2\0029\1\2\0006\2\3\0009\2\4\0029\2\5\0026\4\3\0009\4\4\0049\4\6\4'\6\a\0'\a\b\0)\b\0\0)\t\1\0B\4\5\0A\2\0\0026\3\3\0009\3\t\3'\4\v\0=\4\n\0036\3\3\0009\3\t\3'\4\r\0=\4\f\0036\3\3\0009\3\t\3'\4\15\0=\4\14\0036\3\3\0009\3\t\3\18\4\1\0'\5\17\0&\4\5\4=\4\16\0036\3\3\0009\3\t\3)\4\f\0=\4\18\0036\3\3\0009\3\t\3)\4P\0=\4\19\0036\3\3\0009\3\t\3'\4\21\0=\4\20\0036\3\3\0009\3\t\0035\4\26\0005\5\24\0005\6\23\0=\6\25\5=\5\27\0045\5\29\0005\6\28\0=\6\25\5=\5\30\0045\5 \0005\6\31\0=\6\25\5=\5!\0045\5#\0005\6\"\0=\6\25\5=\5$\0045\5&\0005\6%\0=\6\25\5'\6'\0\18\a\1\0'\b(\0&\6\b\6=\6)\5=\5*\0045\5,\0005\6+\0=\6\25\5'\6-\0\18\a\1\0'\b.\0&\6\b\6=\6)\5=\5/\4=\4\22\0036\3\3\0009\3\t\0034\4\3\0'\0051\0\18\6\2\0'\a2\0&\5\a\5>\5\1\4=\0040\3K\0\1\0\r plugins\22üê¨ Nvim loaded \28dashboard_custom_footer\6f\19/.config/nvim/\30Telescope find_files cwd=\1\0\0\1\2\0\0\29Óò´  Neovim Config Files\6e\fcommand\27/.config/nvim/init.lua\a:e\1\0\0\1\2\0\0\29Óòï  Config             \6d\1\0\1\fcommand\24Telescope live_grep\1\2\0\0\29Óòí  Search Text        \6c\1\0\1\fcommand2:lua require('auto-session').RestoreSession()\1\2\0\0\29Ôë§  Load Last Session  \6b\1\0\1\fcommand\23Telescope oldfiles\1\2\0\0\29ÓéÖ  Recent Files       \6a\1\0\0\16description\1\0\1\fcommand1Telescope find_files find_command=rg,--files\1\2\0\0\29Ôúù  Find File          \29dashboard_custom_section\14telescope dashboard_default_executive!dashboard_preview_file_width\"dashboard_preview_file_height$/.config/nvim/static/neovim.cat\27dashboard_preview_file\18lolcat -F 0.3\31dashboard_preview_pipeline\bcat\30dashboard_preview_command\nüê¨ \26dashboard_footer_icon\6g\6*/~/.local/share/nvim/site/pack/packer/start\rglobpath\blen\afn\bvim\thome\22core.utils.global\frequire\0" },
    loaded = true,
    path = "/Users/vova/.local/share/nvim/site/pack/packer/start/dashboard-nvim"
  },
  ["editorconfig-vim"] = {
    loaded = true,
    path = "/Users/vova/.local/share/nvim/site/pack/packer/start/editorconfig-vim"
  },
  ["feline.nvim"] = {
    config = { "\27LJ\2\ná\1\0\0\4\0\t\0\0206\0\0\0009\0\1\0009\0\2\0\18\2\0\0009\0\3\0B\0\2\2+\1\0\0\a\0\4\0X\2\2Ä'\1\5\0X\2\5Ä\a\0\6\0X\2\2Ä'\1\a\0X\2\1Ä'\1\b\0\18\2\1\0\18\3\0\0&\2\3\2L\2\2\0\tÔÖ∫ \tÔÖπ \bMAC\tÔÖº \tUNIX\nupper\15fileformat\abo\bvim÷\1\0\0\6\0\14\0\0216\0\0\0009\0\1\0009\0\2\0B\0\1\0026\1\0\0009\1\3\0019\1\4\1\18\3\0\0B\1\2\0029\2\5\0019\3\6\1 \2\3\0029\3\a\0019\4\b\1 \3\4\0039\4\t\0015\5\n\0=\2\v\5=\3\f\5=\4\r\5L\5\2\0\ninfos\rwarnings\verrors\1\0\0\tinfo\18style_warning\fwarning\16style_error\nerror\25ale#statusline#Count\afn\25nvim_get_current_buf\bapi\bvimc\0\0\3\1\5\0\n5\0\1\0-\1\0\0009\1\0\1B\1\1\2=\1\2\0-\1\0\0009\1\3\1B\1\1\2=\1\4\0L\0\2\0\5¿\afg\19get_mode_color\tname\1\0\0\28get_mode_highlight_namec\0\0\3\1\5\0\n5\0\1\0-\1\0\0009\1\0\1B\1\1\2=\1\2\0-\1\0\0009\1\3\1B\1\1\2=\1\4\0L\0\2\0\5¿\afg\19get_mode_color\tname\1\0\0\28get_mode_highlight_name-\0\0\3\1\2\0\6'\0\0\0-\1\0\0B\1\1\0029\1\1\1&\0\1\0L\0\2\0\3¿\verrors\tÔÜà 5\0\0\2\1\1\1\t-\0\0\0B\0\1\0029\0\0\0\t\0\0\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\3¿\verrors\0/\0\0\3\1\2\0\6'\0\0\0-\1\0\0B\1\1\0029\1\1\1&\0\1\0L\0\2\0\3¿\rwarnings\tÔÅ± 7\0\0\2\1\1\1\t-\0\0\0B\0\1\0029\0\0\0\t\0\0\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\3¿\rwarnings\0,\0\0\3\1\2\0\6'\0\0\0-\1\0\0B\1\1\0029\1\1\1&\0\1\0L\0\2\0\3¿\ninfos\tÔÅö 4\0\0\2\1\1\1\t-\0\0\0B\0\1\0029\0\0\0\t\0\0\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\3¿\ninfos\0000\0\0\3\1\2\0\4-\0\0\0009\0\0\0'\2\1\0D\0\2\0\4¿\tHint\22diagnostics_existÖ\18\1\0\r\0|\0¯\0015\0\0\0005\1\2\0009\2\1\0=\2\3\0019\2\4\0=\2\5\0019\2\6\0=\2\a\0019\2\1\0=\2\b\0019\2\t\0=\2\n\0019\2\v\0=\2\f\0019\2\v\0=\2\r\0019\2\14\0=\2\15\0019\2\14\0=\2\16\0019\2\17\0=\2\18\0019\2\1\0=\2\19\0019\2\1\0=\2\20\0019\2\1\0=\2\21\0019\2\22\0=\2\23\0013\2\24\0003\3\25\0006\4\26\0'\6\27\0B\4\2\0026\5\26\0'\a\28\0B\5\2\0025\6%\0005\a \0005\b\29\0003\t\30\0=\t\31\b=\b!\a5\b\"\0003\t#\0=\t\31\b=\b$\a=\a&\0065\a*\0005\b'\0005\t(\0009\n\t\0=\n)\t=\t\31\b=\b+\a5\b,\0005\t-\0009\n\v\0=\n)\t=\t\31\b=\b.\a5\b/\0=\b0\a5\b1\0=\0022\b5\t3\0009\n\v\0=\n)\t=\t\31\b=\b4\a=\a5\0065\a6\0005\b7\0=\b\31\a=\a8\0065\a9\0005\b:\0009\t\t\0=\t)\b=\b\31\a=\a;\0065\aA\0005\b=\0003\t<\0=\t2\b3\t>\0=\t?\b5\t@\0009\n\4\0=\n)\t=\t\31\b=\bB\a5\bD\0003\tC\0=\t2\b3\tE\0=\t?\b5\tF\0009\n\22\0=\n)\t=\t\31\b=\bG\a5\bI\0003\tH\0=\t2\b3\tJ\0=\t?\b5\tK\0009\n\t\0=\n)\t=\t\31\b=\b+\a5\bL\0003\tM\0=\t?\b5\tN\0009\n\14\0=\n)\t=\t\31\b=\bO\a=\aP\0065\aS\0005\bQ\0005\tR\0009\n\22\0=\n)\t=\t\31\b=\bT\a=\aU\0065\aX\0005\bV\0005\tW\0009\n\v\0=\n)\t=\t\31\b=\bY\a5\bZ\0005\t[\0009\n\1\0=\n)\t=\t\31\b=\b\\\a5\b]\0005\t^\0009\n\17\0=\n)\t=\t\31\b=\b_\a5\b`\0005\ta\0009\n\4\0=\n)\t=\t\31\b=\bb\a=\ac\0065\aj\0005\be\0005\td\0=\tf\b5\tg\0=\th\b4\t\0\0=\ti\b=\bk\a5\bo\0005\tl\0004\n\b\0009\v&\0069\v!\v>\v\1\n9\v5\0069\v+\v>\v\2\n9\vU\0069\vT\v>\v\3\n9\vP\0069\vB\v>\v\4\n9\vP\0069\vG\v>\v\5\n9\vP\0069\vO\v>\v\6\n9\vP\0069\v+\v>\v\a\n=\nm\t4\n\3\0009\v&\0069\v!\v>\v\1\n9\v5\0069\v+\v>\v\2\n=\nn\t=\t!\b5\tp\0004\n\0\0=\nm\t4\n\0\0=\nn\t=\tq\b5\tr\0004\n\t\0009\vc\0069\v\\\v>\v\1\n9\vc\0069\v_\v>\v\2\n9\vc\0069\vb\v>\v\3\n9\v5\0069\v4\v>\v\4\n9\vc\0069\vY\v>\v\5\n9\v8\6>\v\6\n9\v;\6>\v\a\n9\v&\0069\v$\v>\v\b\n=\nm\t4\n\0\0=\nn\t=\t$\b6\t\26\0'\vs\0B\t\2\0029\tt\t5\vv\0009\fu\0=\fw\v9\f)\0=\fx\v=\by\v=\az\v=\1{\vB\t\2\0012\0\0ÄK\0\1\0\19vi_mode_colors\15properties\15components\15default_fg\15default_bg\1\0\0\abg\nsetup\vfeline\1\0\0\bmid\1\0\0\1\0\0\rinactive\vactive\1\0\0\19force_inactive\1\0\0\rbufnames\rbuftypes\1\2\0\0\rterminal\14filetypes\1\0\0\1\3\0\0\rNvimTree\vpacker\bgit\vremove\1\0\0\1\0\1\rprovider\21git_diff_removed\vchange\1\0\0\1\0\1\rprovider\21git_diff_changed\badd\1\0\0\1\0\1\rprovider\19git_diff_added\vbranch\1\0\0\1\0\1\nstyle\tbold\1\0\3\rleft_sep\6 \ticon\tÓÇ† \rprovider\15git_branch\blsp\tname\1\0\0\1\0\0\1\0\3\rleft_sep\6 \ticon\tÔà≥ \rprovider\21lsp_client_names\fdiagnos\thint\1\0\0\0\1\0\1\rprovider\21diagnostic_hints\1\0\0\0\1\0\1\rleft_sep\6 \0\twarn\1\0\0\0\1\0\1\rleft_sep\6 \0\berr\1\0\0\1\0\0\fenabled\0\1\0\1\rleft_sep\6 \0\15scroll_bar\1\0\1\nstyle\tbold\1\0\2\rleft_sep\6 \rprovider\15scroll_bar\20line_percentage\1\0\1\nstyle\tbold\1\0\2\rleft_sep\6 \rprovider\20line_percentage\tfile\aos\1\0\1\nstyle\tbold\rprovider\1\0\1\rleft_sep\6 \ttype\1\0\1\rprovider\14file_type\rencoding\1\0\1\nstyle\tbold\1\0\2\rleft_sep\6 \rprovider\18file_encoding\tinfo\1\0\0\afg\1\0\1\nstyle\tbold\1\0\1\rprovider\14file_info\fvi_mode\1\0\0\nright\0\1\0\2\rleft_sep\6 \rprovider\b‚ñä\tleft\1\0\0\ahl\0\1\0\2\14right_sep\6 \rprovider\b‚ñä\29feline.providers.vi_mode\25feline.providers.lsp\frequire\0\0\tNONE\vyellow\tTERM\nSHELL\fCOMMAND\vSELECT\vorange\tMORE\nENTER\tcyan\14V-REPLACE\fREPLACE\vviolet\nBLOCK\tblue\aOP\vVISUAL\fmagenta\vINSERT\bred\vNORMAL\1\0\0\ngreen\1\0\v\tblue\f#61afef\vviolet\f#a9a1e1\bred\f#e86671\vorange\f#d19a66\ngreen\f#98c379\rdarkblue\f#081633\tcyan\f#56b6c2\vyellow\f#e0af68\afg\f#abb2bf\abg\f#282c34\fmagenta\f#c678dd\0" },
    loaded = true,
    path = "/Users/vova/.local/share/nvim/site/pack/packer/start/feline.nvim"
  },
  ["format.nvim"] = {
    config = { "\27LJ\2\n°\1\0\1\5\0\3\0\0056\1\0\0009\1\1\1'\3\2\0\18\4\0\0D\1\3\0|lua-format -i --no-keep-simple-function-one-line --no-break-after-operator --column-limit=150 --break-after-table-lb %s\vformat\vstringF\0\1\5\0\3\0\0056\1\0\0009\1\1\1'\3\2\0\18\4\0\0D\1\3\0!prettier --stdin-filepath %s\vformat\vstringF\0\1\5\0\3\0\0056\1\0\0009\1\1\1'\3\2\0\18\4\0\0D\1\3\0!prettier --stdin-filepath %s\vformat\vstring1\0\1\5\0\3\0\0056\1\0\0009\1\1\1'\3\2\0\18\4\0\0D\1\3\0\frufo %s\vformat\vstringF\0\1\5\0\3\0\0056\1\0\0009\1\1\1'\3\2\0\18\4\0\0D\1\3\0!prettier --stdin-filepath %s\vformat\vstringF\0\1\5\0\3\0\0056\1\0\0009\1\1\1'\3\2\0\18\4\0\0D\1\3\0!prettier --stdin-filepath %s\vformat\vstringF\0\1\5\0\3\0\0056\1\0\0009\1\1\1'\3\2\0\18\4\0\0D\1\3\0!prettier --stdin-filepath %s\vformat\vstringF\0\1\5\0\3\0\0056\1\0\0009\1\1\1'\3\2\0\18\4\0\0D\1\3\0!prettier --stdin-filepath %s\vformat\vstring˝\3\1\0\a\0\"\0Q6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0004\3\3\0005\4\4\0005\5\3\0=\5\5\4>\4\1\3=\3\a\0024\3\3\0005\4\t\0004\5\3\0003\6\b\0>\6\1\5=\5\5\4>\4\1\3=\3\n\0024\3\3\0005\4\f\0004\5\3\0003\6\v\0>\6\1\5=\5\5\4>\4\1\3=\3\r\0024\3\3\0005\4\15\0004\5\3\0003\6\14\0>\6\1\5=\5\5\4>\4\1\3=\3\16\0024\3\3\0005\4\18\0004\5\3\0003\6\17\0>\6\1\5=\5\5\4>\4\1\3=\3\19\0024\3\3\0005\4\21\0004\5\3\0003\6\20\0>\6\1\5=\5\5\4>\4\1\3=\3\22\0024\3\3\0005\4\24\0004\5\3\0003\6\23\0>\6\1\5=\5\5\4>\4\1\3=\3\25\0024\3\3\0005\4\27\0004\5\3\0003\6\26\0>\6\1\5=\5\5\4>\4\1\3=\3\28\0024\3\3\0005\4\30\0004\5\3\0003\6\29\0>\6\1\5=\5\5\4>\4\1\3=\3\31\2B\0\2\0016\0 \0009\0\5\0'\2!\0B\0\2\1K\0\1\0'autocmd BufWritePost * FormatWrite\bvim\tyaml\1\0\0\0\tjson\1\0\0\0\bcss\1\0\0\0\thtml\1\0\0\0\truby\1\0\0\0\15typescript\1\0\0\0\15javascript\1\0\0\0\blua\1\0\0\0\6*\1\0\0\bcmd\1\0\0\1\2\0\0\24sed -i 's/[ \t]*$//'\nsetup\vformat\frequire\0" },
    loaded = true,
    path = "/Users/vova/.local/share/nvim/site/pack/packer/start/format.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/Users/vova/.local/share/nvim/site/pack/packer/start/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n∞\5\0\0\5\0\20\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3=\3\15\0025\3\16\0=\3\17\0025\3\18\0=\3\19\2B\0\2\1K\0\1\0\16watch_index\1\0\1\rinterval\3Ë\a\fkeymaps\1\0\2\vbuffer\2\fnoremap\2\nsigns\1\0\6\nnumhl\1\18sign_priority\3\6\23use_decoration_api\1\23current_line_blame\2\20update_debounce\3»\1\vlinehl\1\17changedelete\1\0\4\ttext\6=\vlinehl\21GitSignsChangeLn\nnumhl\21GitSignsChangeNr\ahl\19GitSignsChange\14topdelete\1\0\4\ttext\b‚Äæ\vlinehl\21GitSignsDeleteLn\nnumhl\21GitSignsDeleteNr\ahl\19GitSignsDelete\vdelete\1\0\4\ttext\6_\vlinehl\21GitSignsDeleteLn\nnumhl\21GitSignsDeleteNr\ahl\19GitSignsDelete\vchange\1\0\4\ttext\6~\vlinehl\21GitSignsChangeLn\nnumhl\21GitSignsChangeNr\ahl\19GitSignsChange\badd\1\0\0\1\0\4\ttext\6+\vlinehl\18GitSignsAddLn\nnumhl\18GitSignsAddNr\ahl\16GitSignsAdd\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/Users/vova/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  hop = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\bhop\frequire\0" },
    loaded = true,
    path = "/Users/vova/.local/share/nvim/site/pack/packer/start/hop"
  },
  kommentary = {
    loaded = true,
    path = "/Users/vova/.local/share/nvim/site/pack/packer/start/kommentary"
  },
  ["lsp-colors.nvim"] = {
    loaded = true,
    path = "/Users/vova/.local/share/nvim/site/pack/packer/start/lsp-colors.nvim"
  },
  ["lsp-rooter.nvim"] = {
    config = { "\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15lsp-rooter\frequire\0" },
    loaded = true,
    path = "/Users/vova/.local/share/nvim/site/pack/packer/start/lsp-rooter.nvim"
  },
  ["lspsaga.nvim"] = {
    loaded = true,
    path = "/Users/vova/.local/share/nvim/site/pack/packer/start/lspsaga.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/vova/.local/share/nvim/site/pack/packer/opt/markdown-preview.nvim"
  },
  ["neoscroll.nvim"] = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    path = "/Users/vova/.local/share/nvim/site/pack/packer/start/neoscroll.nvim"
  },
  ["numb.nvim"] = {
    config = { "\27LJ\2\nX\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\17show_numbers\2\20show_cursorline\2\nsetup\tnumb\frequire\0" },
    loaded = true,
    path = "/Users/vova/.local/share/nvim/site/pack/packer/start/numb.nvim"
  },
  ["nvim-ale-diagnostic"] = {
    loaded = true,
    path = "/Users/vova/.local/share/nvim/site/pack/packer/start/nvim-ale-diagnostic"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\nC\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\0\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/Users/vova/.local/share/nvim/site/pack/packer/start/nvim-autopairs"
  },
  ["nvim-bqf"] = {
    loaded = true,
    path = "/Users/vova/.local/share/nvim/site/pack/packer/start/nvim-bqf"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\nµ\1\0\0\4\0\14\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0=\3\r\2B\0\2\1K\0\1\0\thtml\1\0\1\nnames\1\bvim\1\0\1\nnames\2\tsass\1\0\1\vrgb_fn\2\tscss\1\0\1\vrgb_fn\2\bcss\1\0\1\vrgb_fn\2\1\2\0\0\6*\nsetup\14colorizer\frequire\0" },
    loaded = true,
    path = "/Users/vova/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-compe"] = {
    config = { "\27LJ\2\nF\0\1\a\0\3\0\b6\1\0\0009\1\1\0019\1\2\1\18\3\0\0+\4\2\0+\5\2\0+\6\2\0D\1\5\0\27nvim_replace_termcodes\bapi\bvimõ\1\0\0\6\0\b\2\0286\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\2\23\0\0\0\b\0\1\0X\1\18Ä6\1\0\0009\1\1\0019\1\4\1'\3\3\0B\1\2\2\18\3\1\0009\1\5\1\18\4\0\0\18\5\0\0B\1\4\2\18\3\1\0009\1\6\1'\4\a\0B\1\3\2\v\1\0\0X\1\2Ä+\1\1\0X\2\1Ä+\1\2\0L\1\2\0\a%s\nmatch\bsub\fgetline\6.\bcol\afn\bvim\2\0¢\1\0\0\3\2\5\1\0236\0\0\0009\0\1\0009\0\2\0)\2\1\0B\0\2\2\t\0\0\0X\0\4Ä-\0\0\0'\2\3\0D\0\2\0X\0\vÄ-\0\1\0B\0\1\2\15\0\0\0X\1\4Ä-\0\0\0'\2\4\0D\0\2\0X\0\3Ä-\0\0\0'\2\4\0D\0\2\0K\0\1\0\0¿\1¿\n<Tab>!<Plug>(vsnip-expand-or-jump)\20vsnip#available\afn\bvim\2|\0\0\3\1\5\1\0156\0\0\0009\0\1\0009\0\2\0)\2ˇˇB\0\2\2\t\0\0\0X\0\4Ä-\0\0\0'\2\3\0D\0\2\0X\0\3Ä-\0\0\0'\2\4\0D\0\2\0K\0\1\0\0¿\f<S-Tab>\28<Plug>(vsnip-jump-prev)\19vsnip#jumpable\afn\bvim\2∏\6\1\0\b\0&\0B6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\0035\4\a\0=\4\b\0035\4\t\0=\4\n\0035\4\v\0=\4\f\0035\4\r\0=\4\14\3=\3\15\2B\0\2\0013\0\16\0003\1\17\0006\2\18\0003\3\20\0=\3\19\0026\2\18\0003\3\22\0=\3\21\0026\2\23\0009\2\24\0029\2\25\2'\4\26\0'\5\27\0'\6\28\0005\a\29\0B\2\5\0016\2\23\0009\2\24\0029\2\25\2'\4\30\0'\5\27\0'\6\28\0005\a\31\0B\2\5\0016\2\23\0009\2\24\0029\2\25\2'\4\26\0'\5 \0'\6!\0005\a\"\0B\2\5\0016\2\23\0009\2\24\0029\2\25\2'\4\30\0'\5 \0'\6!\0005\a#\0B\2\5\0016\2\0\0'\4$\0B\2\2\0029\2\2\0025\4%\0B\2\2\0012\0\0ÄK\0\1\0\1\0\2\17map_complete\2\vmap_cr\2$nvim-autopairs.completion.compe\1\0\1\texpr\2\1\0\1\texpr\2\27v:lua.s_tab_complete()\f<S-Tab>\1\0\1\texpr\2\6s\1\0\1\texpr\2\25v:lua.tab_complete()\n<Tab>\6i\20nvim_set_keymap\bapi\bvim\0\19s_tab_complete\0\17tab_complete\a_G\0\0\vsource\ftabnine\1\0\3\tkind\tÔÉ∂ \15max_reslts\3\6\rpriority\3»\1\rnvim_lsp\1\0\1\tkind\16 Óúñ  (LSP)\nvsnip\1\0\1\tkind\20 ÔÉÑ  (Snippet)\vbuffer\1\0\1\tkind\19 Ôêé  (Buffer)\tpath\1\0\a\nspell\1\18snippets_nvim\1\15treesitter\1\tomni\1\ttags\1\rnvim_lua\1\tcalc\1\1\0\1\tkind\17 Ôõó  (Path)\1\0\6\ndebug\1\18documentation\2\fenabled\2\25allow_prefix_unmatch\1\14preselect\venable\15min_length\3\1\nsetup\ncompe\frequire\0" },
    loaded = true,
    path = "/Users/vova/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-cursorline"] = {
    loaded = true,
    path = "/Users/vova/.local/share/nvim/site/pack/packer/start/nvim-cursorline"
  },
  ["nvim-hlslens"] = {
    config = { "\27LJ\2\n∆\4\0\5\19\0\20\1f6\5\0\0009\5\1\0059\5\2\5\b\5\0\0X\5\2Ä+\5\1\0X\6\1Ä+\5\2\0,\6\b\0006\t\3\0009\t\4\t\18\v\4\0B\t\2\2)\n\1\0\1\n\t\0X\n\18Ä6\n\5\0009\n\6\n'\f\a\0\18\r\t\0)\14\1\0\0\14\4\0X\14\2Ä+\14\1\0X\15\1Ä+\14\2\0\4\5\14\0X\14\2Ä'\14\b\0X\15\1Ä'\14\t\0B\n\4\2\18\6\n\0X\n\14Ä\t\t\0\0X\n\vÄ\b\4\0\0X\n\2Ä+\n\1\0X\v\1Ä+\n\2\0\4\5\n\0X\n\2Ä'\6\b\0X\n\1Ä'\6\t\0X\n\1Ä'\6\n\0006\n\v\0008\f\3\1B\n\2\3\15\0\2\0X\f\27Ä\21\f\1\0\6\6\n\0X\r\tÄ6\r\5\0009\r\6\r'\15\f\0\18\16\6\0\18\17\3\0\18\18\f\0B\r\5\2\18\a\r\0X\r\aÄ6\r\5\0009\r\6\r'\15\r\0\18\16\3\0\18\17\f\0B\r\4\2\18\a\r\0004\r\3\0005\14\14\0>\14\1\r5\14\15\0>\a\1\14>\14\2\r\18\b\r\0X\f\14Ä6\f\5\0009\f\6\f'\14\16\0\18\15\6\0\18\16\3\0B\f\4\2\18\a\f\0004\f\3\0005\r\17\0>\r\1\f5\r\18\0>\a\1\r>\r\2\f\18\b\f\0009\f\19\0)\14\0\0\23\15\0\n\23\16\0\v\18\17\b\0\18\18\2\0B\f\6\1K\0\1\0\rset_virt\1\3\0\0\0\17HlSearchLens\1\3\0\0\6 \vIgnore\f[%s %d]\1\3\0\0\0\21HlSearchLensNear\1\3\0\0\6 \vIgnore\f[%d/%d]\15[%s %d/%d]\vunpack\5\bÔïÖ\bÔïù\t%d%s\vformat\vstring\babs\tmath\18searchforward\6v\bvim\2^\1\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0003\3\4\0=\3\5\2B\0\2\1K\0\1\0\18override_lens\0\1\0\1\14calm_down\2\nsetup\fhlslens\frequire\0" },
    loaded = true,
    path = "/Users/vova/.local/share/nvim/site/pack/packer/start/nvim-hlslens"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/vova/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lspinstall"] = {
    config = { "\27LJ\2\nk\0\0\4\0\6\0\r6\0\0\0009\0\1\0009\0\2\0006\2\0\0009\2\1\0029\2\3\2B\2\1\0A\0\0\0016\0\0\0009\0\4\0'\2\5\0B\0\2\1K\0\1\0\tedit\bcmd\23get_active_clients\16stop_client\blsp\bvimR\0\0\5\0\5\0\v6\0\0\0009\0\1\0009\0\2\0B\0\1\0026\1\0\0009\1\3\1'\3\4\0\18\4\0\0&\3\4\3B\1\2\1K\0\1\0\nedit \bcmd\17get_log_path\blsp\bvimY\0\2\a\1\3\0\a-\2\0\0009\2\0\2\18\4\1\0'\5\1\0'\6\2\0B\2\4\1K\0\1\0\0¿\27v:lua.vim.lsp.omnifunc\romnifunc\24nvim_buf_set_option•\2\0\0\4\1\15\0\0226\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\0029\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\a\0019\1\4\0009\1\5\0019\1\6\0015\2\n\0005\3\t\0=\3\v\2=\2\b\0015\1\f\0=\0\r\1-\2\0\0=\2\14\1L\1\2\0\4¿\14on_attach\17capabilities\1\0\0\15properties\1\0\0\1\4\0\0\18documentation\vdetail\24additionalTextEdits\19resolveSupport\19snippetSupport\19completionItem\15completion\17textDocument\29make_client_capabilities\rprotocol\blsp\bvimö\1\0\0\n\4\5\0\24-\0\0\0009\0\0\0B\0\1\1-\0\0\0009\0\1\0B\0\1\0026\1\2\0\18\3\0\0B\1\2\4H\4\vÄ-\6\1\0B\6\1\2\a\5\3\0X\a\2Ä-\a\2\0=\a\4\6-\a\3\0008\a\5\a9\a\0\a\18\t\6\0B\a\2\1F\4\3\3R\4ÛK\0\1\0\2¿\5¿\6¿\1¿\rsettings\blua\npairs\22installed_servers\nsetup5\0\0\3\1\3\0\a-\0\0\0B\0\1\0016\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\a¿\fbufdo e\bcmd\bvim \r\1\0\r\0;\0p6\0\0\0009\0\1\0006\1\2\0'\3\3\0B\1\2\0026\2\2\0'\4\4\0B\2\2\0026\3\2\0'\5\5\0B\3\2\0029\4\6\0035\6\a\0B\4\2\0016\4\b\0003\5\n\0=\5\t\0046\4\b\0003\5\f\0=\5\v\0046\4\0\0009\4\r\0049\4\14\0045\5\16\0=\5\15\0046\4\0\0009\4\17\4'\6\18\0B\4\2\0016\4\0\0009\4\17\4'\6\19\0B\4\2\0016\4\0\0009\4\17\4'\6\20\0B\4\2\0016\4\0\0009\4\17\4'\6\21\0B\4\2\0016\4\0\0009\4\17\4'\6\22\0B\4\2\0016\4\0\0009\4\17\4'\6\23\0B\4\2\0016\4\0\0009\4\r\0049\4\24\0046\5\0\0009\5\r\0059\5\26\0056\a\0\0009\a\r\a9\a\27\a9\a\28\a5\b\29\0005\t\30\0=\t\31\bB\5\3\2=\5\25\0043\4 \0003\5!\0005\0064\0005\a'\0005\b\"\0006\t\0\0009\t#\t6\v$\0009\v%\v'\f&\0B\t\3\2=\t%\b=\b(\a5\b)\0005\t*\0=\t+\b=\b,\a5\b1\0004\t\0\b6\n\0\0009\n-\n9\n.\n'\f/\0B\n\2\2+\v\2\0<\v\n\t6\n\0\0009\n-\n9\n.\n'\f0\0B\n\2\2+\v\2\0<\v\n\t=\t2\b=\b3\a=\a5\0063\a6\0\18\b\a\0B\b\1\0013\b8\0=\b7\0026\b\0\0009\b\1\b9\b9\b'\n:\0B\b\2\0012\0\0ÄK\0\1\0Mcommand! LspCapabilities lua require('settings._lsp.lsp-capabilities')()\17nvim_command\0\22post_install_hook\0\bLua\1\0\0\14workspace\flibrary\1\0\0\28$VIMRUNTIME/lua/vim/lsp\20$VIMRUNTIME/lua\vexpand\afn\16diagnostics\fglobals\1\3\0\0\bvim\19packer_plugins\1\0\1\venable\2\fruntime\1\0\0\6;\tpath\fpackage\nsplit\1\0\1\fversion\vLuaJIT\0\0\nsigns\1\0\2\venable\2\rpriority\3\20\1\0\3\17virtual_text\2\14underline\2\21update_in_insert\1\27on_publish_diagnostics\15diagnostic\twith$textDocument/publishDiagnostics\rhandlers9command! -nargs=0 LspRestart call v:lua.reload_lsp()7command! -nargs=0 LspLog call v:lua.open_lsp_log()0sign define LspDiagnosticsSignHint text=ÔÅö7sign define LspDiagnosticsSignInformation text=ÔÅö3sign define LspDiagnosticsSignWarning text=ÔÅ±1sign define LspDiagnosticsSignError text=ÔÅó\bcmd\1\26\0\0\18 Ôíû  (Text) \19 Ôö¶  (Method)\21 Ôûî  (Function)\24 Ôê•  (Constructor)\18 Ô¥≤  (Field)\21[Óúñ] (Variable)\18 Ô†ñ  (Class)\22 Ô∞Æ  (Interface)\19 Ôô®  (Module)\20 Ô™∂ (Property)\17 Ôëµ  (Unit)\18 Ô¢ü  (Value)\16 Ô©ó (Enum)\20 Ô†ä  (Keyword)\20 ÔÉÑ  (Snippet)\18 Ô£ó  (Color)\17 Ôúì  (File)\22 Ôúú  (Reference)\19 Ôùä  (Folder)\23 ÔÖù  (EnumMember)\21 Ô≤Ä  (Constant)\19 Ô≥§  (Struct)\18 ÔÉß  (Event)\21 Ôó´  (Operator)\26 ÔûÉ  (TypeParameter)\23CompletionItemKind\rprotocol\blsp\0\17open_lsp_log\0\15reload_lsp\a_G\1\0\1\21code_action_icon\tüí°\18init_lsp_saga\flspsaga\15lspinstall\14lspconfig\frequire\bapi\bvim\0" },
    loaded = true,
    path = "/Users/vova/.local/share/nvim/site/pack/packer/start/nvim-lspinstall"
  },
  ["nvim-spectre"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fspectre\frequire\0" },
    loaded = true,
    path = "/Users/vova/.local/share/nvim/site/pack/packer/start/nvim-spectre"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\nú\1\0\0\3\0\6\1\0176\0\0\0009\0\1\0009\0\2\0B\0\1\2\21\0\0\0\t\0\0\0X\0\5Ä6\0\0\0009\0\3\0'\2\4\0B\0\2\1X\0\4Ä6\0\0\0009\0\3\0'\2\5\0B\0\2\1K\0\1\0\rwincmd l0vnew | wincmd h | vert resize 30 | wincmd l\bcmd\19nvim_list_wins\bapi\bvim\0023\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\20NvimTreeRefresh\bcmd\bvimã\b\1\0\3\0\"\0R6\0\0\0003\1\2\0=\1\1\0006\0\3\0'\2\4\0B\0\2\0029\0\5\0003\2\6\0B\0\2\0016\0\a\0009\0\b\0)\1-\0=\1\t\0006\0\a\0009\0\b\0005\1\v\0=\1\n\0006\0\a\0009\0\b\0)\1\0\0=\1\f\0006\0\a\0009\0\b\0)\1\0\0=\1\r\0006\0\a\0009\0\b\0)\1\0\0=\1\14\0006\0\a\0009\0\b\0)\1\1\0=\1\15\0006\0\a\0009\0\b\0)\1\1\0=\1\16\0006\0\a\0009\0\b\0)\1\0\0=\1\17\0006\0\a\0009\0\b\0)\1\1\0=\1\18\0006\0\a\0009\0\b\0)\1\1\0=\1\19\0006\0\a\0009\0\b\0)\1\1\0=\1\20\0006\0\a\0009\0\b\0)\1\1\0=\1\21\0006\0\a\0009\0\b\0005\1\23\0=\1\22\0006\0\a\0009\0\b\0005\1\25\0=\1\24\0006\0\a\0009\0\b\0)\1\1\0=\1\26\0006\0\a\0009\0\b\0)\1\1\0=\1\27\0006\0\a\0009\0\b\0005\1\29\0005\2\30\0=\2\31\0015\2 \0=\2!\1=\1\28\0K\0\1\0\vfolder\1\0\5\nempty\bÔÑî\topen\bÓóæ\fdefault\bÓóø\fsymlink\bÔíÇ\15empty_open\bÔÑï\bgit\1\0\a\vstaged\b‚úì\runstaged\bÔëÑ\fdeleted\bÔëò\14untracked\b‚òÖ\fignored\b‚óå\frenamed\b‚ûú\runmerged\bÓúß\1\0\1\fdefault\5\20nvim_tree_icons\30nvim_tree_lsp_diagnostics\26nvim_tree_group_empty\1\0\4\18folder_arrows\3\1\nfiles\3\1\ffolders\3\1\bgit\3\1\25nvim_tree_show_icons\1\2\0\0\14dashboard\29nvim_tree_auto_ignore_ft\21nvim_tree_git_hl\24nvim_tree_gitignore\23nvim_tree_lint_lsp\29nvim_tree_indent_markers\23nvim_tree_tab_open\21nvim_tree_follow\27nvim_tree_hijack_netrw\28nvim_tree_disable_netrw\25nvim_tree_auto_close\24nvim_tree_auto_open\1\a\0\0\t.git\17node_modules\tdist\14tags.lock\n.tags\14tags.temp\21nvim_tree_ignore\20nvim_tree_width\6g\bvim\0\23on_nvim_tree_ready\21nvim-tree.events\frequire\0\17move_or_open\a_G\0" },
    loaded = true,
    path = "/Users/vova/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    after = { "nvim-ts-rainbow" },
    loaded = true,
    only_config = true
  },
  ["nvim-ts-autotag"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/vova/.local/share/nvim/site/pack/packer/opt/nvim-ts-autotag"
  },
  ["nvim-ts-rainbow"] = {
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/vova/.local/share/nvim/site/pack/packer/opt/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/vova/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/vova/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/vova/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/Users/vova/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  rnvimr = {
    loaded = true,
    path = "/Users/vova/.local/share/nvim/site/pack/packer/start/rnvimr"
  },
  ["symbols-outline.nvim"] = {
    loaded = true,
    path = "/Users/vova/.local/share/nvim/site/pack/packer/start/symbols-outline.nvim"
  },
  ["telescope-fzy-native.nvim"] = {
    loaded = true,
    path = "/Users/vova/.local/share/nvim/site/pack/packer/start/telescope-fzy-native.nvim"
  },
  ["telescope-project.nvim"] = {
    loaded = true,
    path = "/Users/vova/.local/share/nvim/site/pack/packer/start/telescope-project.nvim"
  },
  ["telescope-ultisnips.nvim"] = {
    loaded = true,
    path = "/Users/vova/.local/share/nvim/site/pack/packer/start/telescope-ultisnips.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n≤\6\0\0\a\0\30\0?6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\21\0005\3\3\0005\4\4\0=\4\5\0036\4\0\0'\6\6\0B\4\2\0029\4\a\4=\4\b\0036\4\0\0'\6\6\0B\4\2\0029\4\t\4=\4\n\0036\4\0\0'\6\v\0B\4\2\0029\4\f\0049\4\r\4=\4\14\0036\4\0\0'\6\v\0B\4\2\0029\4\15\0049\4\r\4=\4\16\0036\4\0\0'\6\v\0B\4\2\0029\4\17\0049\4\r\4=\4\18\0035\4\19\0=\4\20\3=\3\22\0025\3\24\0005\4\23\0=\4\25\3=\3\26\2B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\27\0'\2\25\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\27\0'\2\28\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\27\0'\2\29\0B\0\2\1K\0\1\0\fproject\14ultisnips\19load_extension\15extensions\15fzy_native\1\0\0\1\0\2\28override_generic_sorter\1\25override_file_sorter\2\rdefaults\1\0\0\fset_env\1\0\1\14COLORTERM\14truecolor\21qflist_previewer\22vim_buffer_qflist\19grep_previewer\23vim_buffer_vimgrep\19file_previewer\bnew\19vim_buffer_cat\25telescope.previewers\19generic_sorter\29get_generic_fuzzy_sorter\16file_sorter\19get_fzy_sorter\22telescope.sorters\25file_ignore_patterns\1\4\0\0\v%.tags\n%tags\ttags\1\0\6\18results_width\4≥ÊÃô\3≥Êåˇ\3\21sorting_strategy\14ascending\20selection_caret\tÔÅ° \20prompt_position\btop\18prompt_prefix\nüî≠ \19color_devicons\2\nsetup\14telescope\frequire\0" },
    loaded = true,
    path = "/Users/vova/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\18todo-comments\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/vova/.local/share/nvim/site/pack/packer/opt/todo-comments.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\ftrouble\frequire\0" },
    loaded = true,
    path = "/Users/vova/.local/share/nvim/site/pack/packer/start/trouble.nvim"
  },
  ["vim-autoread"] = {
    loaded = true,
    path = "/Users/vova/.local/share/nvim/site/pack/packer/start/vim-autoread"
  },
  ["vim-bbye"] = {
    loaded = true,
    path = "/Users/vova/.local/share/nvim/site/pack/packer/start/vim-bbye"
  },
  ["vim-bundler"] = {
    loaded = true,
    path = "/Users/vova/.local/share/nvim/site/pack/packer/start/vim-bundler"
  },
  ["vim-colorschemes"] = {
    config = { "\27LJ\2\n¥\1\0\0\3\0\n\0\0176\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0006\0\0\0009\0\6\0+\1\2\0=\1\a\0006\0\0\0009\0\b\0'\2\t\0B\0\2\1K\0\1\0\30 colorscheme OceanicNext \bcmd\18termguicolors\bopt\24[[48;2;%lu;%lu;%lum\tt_8b\24[[38;2;%lu;%lu;%lum\tt_8f\ago\bvim\0" },
    loaded = true,
    path = "/Users/vova/.local/share/nvim/site/pack/packer/start/vim-colorschemes"
  },
  ["vim-endwise"] = {
    loaded = true,
    path = "/Users/vova/.local/share/nvim/site/pack/packer/start/vim-endwise"
  },
  ["vim-gutentags"] = {
    loaded = true,
    path = "/Users/vova/.local/share/nvim/site/pack/packer/start/vim-gutentags"
  },
  ["vim-matchup"] = {
    loaded = true,
    path = "/Users/vova/.local/share/nvim/site/pack/packer/start/vim-matchup"
  },
  ["vim-rails"] = {
    loaded = true,
    path = "/Users/vova/.local/share/nvim/site/pack/packer/start/vim-rails"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/Users/vova/.local/share/nvim/site/pack/packer/start/vim-repeat"
  },
  ["vim-startuptime"] = {
    loaded = true,
    path = "/Users/vova/.local/share/nvim/site/pack/packer/start/vim-startuptime"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/Users/vova/.local/share/nvim/site/pack/packer/start/vim-vsnip"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\n¡\16\0\0\n\0D\0_6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0005\4\5\0005\5\4\0=\5\6\0045\5\a\0=\5\b\0045\5\t\0005\6\n\0=\6\v\5=\5\f\4B\2\2\0015\2\24\0005\3\r\0005\4\14\0=\4\15\0035\4\16\0=\4\17\0035\4\18\0=\4\19\0035\4\20\0=\4\21\0035\4\22\0=\4\23\3=\3\19\0025\3\25\0005\4\26\0=\4\27\0035\4\28\0=\4\29\0035\4\30\0=\4\31\0035\4 \0=\4\23\0035\4!\0=\4\"\0035\4#\0=\4$\0035\4%\0=\4&\0035\4'\0=\4(\0035\4)\0=\4\21\0035\4*\0=\4\19\0035\4+\0=\4,\3=\3-\0025\3.\0005\4/\0=\0040\0035\0041\0=\4\23\0035\0042\0=\4\21\0035\0043\0=\0044\3=\3\23\0025\0035\0005\0046\0=\0047\0035\0048\0=\4\17\3=\0037\0025\0039\0005\4:\0=\4;\0035\4<\0=\4-\0035\4=\0=\4(\3=\3;\0025\3>\0=\3?\2)\3\0\0)\4\n\0)\5\1\0M\3\6Ä6\a@\0\18\t\6\0B\a\2\2'\bA\0<\b\a\2O\3˙9\3B\0\18\5\2\0005\6C\0B\3\3\1K\0\1\0\1\0\1\vprefix\f<space>\rregister\21which_key_ignore\rtostring\6z\1\3\0\0\21<cmd>ZenMode<cr>\rZen Mode\1\3\0\0\19<cmd>copen<cr>\23Open Quickfix List\1\3\0\0\19<cmd>lopen<cr>\23Open Location List\6x\1\3\0\0\27<cmd>TroubleToggle<cr>\fTrouble\1\0\1\tname\f+errors\1\3\0\0000<cmd>Telescope file_browser cwd=~/Works<cr>\19Browse ~/Works\6p\1\3\0\0\31<cmd>Telescope project<cr>\17Open Project\1\0\1\tname\r+project\6n\1\3\0\0\18<cmd>enew<cr>\rNew File\1\3\0\0 <cmd>Telescope oldfiles<cr>\21Open Recent File\1\3\0\0\"<cmd>Telescope find_files<cr>\14Find File\6t\1\3\0\0\28<cmd>NvimTreeToggle<cr>\rNvimTree\1\0\1\tname\n+file\6l\6S\1\3\0\0005<cmd>Telescope lsp_dynamic_workspace_symbols<cr>\22Workspace Symbols\1\3\0\0\28<cmd>SymbolsOutline<cr>\21Document Symbols\1\3\0\0&<cmd>lua vim.lsp.buf.rename()<cr>\vRename\6q\1\3\0\0 <cmd>Telescope quickfix<cr>\rQuickfix\6k\1\3\0\0000<cmd>lua vim.lsp.diagnostic.goto_prev()<cr>\20Prev Diagnostic\6j\1\3\0\0000<cmd>lua vim.lsp.diagnostic.goto_next()<cr>\20Next Diagnostic\6i\1\3\0\0\21<cmd>LspInfo<cr>\tInfo\1\3\0\0*<cmd>lua vim.lsp.buf.formatting()<cr>\vFormat\6w\1\3\0\0001<cmd>Telescope lsp_workspace_diagnostics<cr>\26Workspace Diagnostics\6d\1\3\0\0000<cmd>Telescope lsp_document_diagnostics<cr>\25Document Diagnostics\6a\1\3\0\0+<cmd>lua vim.lsp.buf.code_action()<cr>\16Code Action\1\0\1\tname\t+LSP\1\0\0\6f\1\3\0\0007<cmd>lua require('spectre').open_file_search()<cr>&Replace in current file (Spectre)\6r\1\3\0\0005viw<cmd>lua require('spectre').open_visual()<cr>\22Replace (Spectre)\6s\1\3\0\0,<cmd>Telescope lsp_document_symbols<cr>\16Goto Symbol\6b\1\3\0\0001<cmd>Telescope current_buffer_fuzzy_find<cr>\vBuffer\6g\1\3\0\0!<cmd>Telescope live_grep<cr>\tGrep\1\0\1\tname\f+search\fplugins\fpresets\1\0\a\6g\1\6z\1\bnav\2\fwindows\2\17text_objects\1\fmotions\1\14operators\1\1\0\3\rspelling\1\14registers\1\nmarks\1\rtriggers\1\2\0\0\f<space>\vhidden\1\0\1\14show_help\2\1\t\0\0\r<silent>\n<cmd>\n<Cmd>\t<CR>\tcall\blua\a^:\a^ \nsetup\30which-key.plugins.presets\14which-key\frequire\0" },
    loaded = true,
    path = "/Users/vova/.local/share/nvim/site/pack/packer/start/which-key.nvim"
  },
  ["zen-mode.nvim"] = {
    config = { "\27LJ\2\n:\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\rzen-mode\frequire\0" },
    loaded = true,
    path = "/Users/vova/.local/share/nvim/site/pack/packer/start/zen-mode.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: feline.nvim
time([[Config for feline.nvim]], true)
try_loadstring("\27LJ\2\ná\1\0\0\4\0\t\0\0206\0\0\0009\0\1\0009\0\2\0\18\2\0\0009\0\3\0B\0\2\2+\1\0\0\a\0\4\0X\2\2Ä'\1\5\0X\2\5Ä\a\0\6\0X\2\2Ä'\1\a\0X\2\1Ä'\1\b\0\18\2\1\0\18\3\0\0&\2\3\2L\2\2\0\tÔÖ∫ \tÔÖπ \bMAC\tÔÖº \tUNIX\nupper\15fileformat\abo\bvim÷\1\0\0\6\0\14\0\0216\0\0\0009\0\1\0009\0\2\0B\0\1\0026\1\0\0009\1\3\0019\1\4\1\18\3\0\0B\1\2\0029\2\5\0019\3\6\1 \2\3\0029\3\a\0019\4\b\1 \3\4\0039\4\t\0015\5\n\0=\2\v\5=\3\f\5=\4\r\5L\5\2\0\ninfos\rwarnings\verrors\1\0\0\tinfo\18style_warning\fwarning\16style_error\nerror\25ale#statusline#Count\afn\25nvim_get_current_buf\bapi\bvimc\0\0\3\1\5\0\n5\0\1\0-\1\0\0009\1\0\1B\1\1\2=\1\2\0-\1\0\0009\1\3\1B\1\1\2=\1\4\0L\0\2\0\5¿\afg\19get_mode_color\tname\1\0\0\28get_mode_highlight_namec\0\0\3\1\5\0\n5\0\1\0-\1\0\0009\1\0\1B\1\1\2=\1\2\0-\1\0\0009\1\3\1B\1\1\2=\1\4\0L\0\2\0\5¿\afg\19get_mode_color\tname\1\0\0\28get_mode_highlight_name-\0\0\3\1\2\0\6'\0\0\0-\1\0\0B\1\1\0029\1\1\1&\0\1\0L\0\2\0\3¿\verrors\tÔÜà 5\0\0\2\1\1\1\t-\0\0\0B\0\1\0029\0\0\0\t\0\0\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\3¿\verrors\0/\0\0\3\1\2\0\6'\0\0\0-\1\0\0B\1\1\0029\1\1\1&\0\1\0L\0\2\0\3¿\rwarnings\tÔÅ± 7\0\0\2\1\1\1\t-\0\0\0B\0\1\0029\0\0\0\t\0\0\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\3¿\rwarnings\0,\0\0\3\1\2\0\6'\0\0\0-\1\0\0B\1\1\0029\1\1\1&\0\1\0L\0\2\0\3¿\ninfos\tÔÅö 4\0\0\2\1\1\1\t-\0\0\0B\0\1\0029\0\0\0\t\0\0\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\3¿\ninfos\0000\0\0\3\1\2\0\4-\0\0\0009\0\0\0'\2\1\0D\0\2\0\4¿\tHint\22diagnostics_existÖ\18\1\0\r\0|\0¯\0015\0\0\0005\1\2\0009\2\1\0=\2\3\0019\2\4\0=\2\5\0019\2\6\0=\2\a\0019\2\1\0=\2\b\0019\2\t\0=\2\n\0019\2\v\0=\2\f\0019\2\v\0=\2\r\0019\2\14\0=\2\15\0019\2\14\0=\2\16\0019\2\17\0=\2\18\0019\2\1\0=\2\19\0019\2\1\0=\2\20\0019\2\1\0=\2\21\0019\2\22\0=\2\23\0013\2\24\0003\3\25\0006\4\26\0'\6\27\0B\4\2\0026\5\26\0'\a\28\0B\5\2\0025\6%\0005\a \0005\b\29\0003\t\30\0=\t\31\b=\b!\a5\b\"\0003\t#\0=\t\31\b=\b$\a=\a&\0065\a*\0005\b'\0005\t(\0009\n\t\0=\n)\t=\t\31\b=\b+\a5\b,\0005\t-\0009\n\v\0=\n)\t=\t\31\b=\b.\a5\b/\0=\b0\a5\b1\0=\0022\b5\t3\0009\n\v\0=\n)\t=\t\31\b=\b4\a=\a5\0065\a6\0005\b7\0=\b\31\a=\a8\0065\a9\0005\b:\0009\t\t\0=\t)\b=\b\31\a=\a;\0065\aA\0005\b=\0003\t<\0=\t2\b3\t>\0=\t?\b5\t@\0009\n\4\0=\n)\t=\t\31\b=\bB\a5\bD\0003\tC\0=\t2\b3\tE\0=\t?\b5\tF\0009\n\22\0=\n)\t=\t\31\b=\bG\a5\bI\0003\tH\0=\t2\b3\tJ\0=\t?\b5\tK\0009\n\t\0=\n)\t=\t\31\b=\b+\a5\bL\0003\tM\0=\t?\b5\tN\0009\n\14\0=\n)\t=\t\31\b=\bO\a=\aP\0065\aS\0005\bQ\0005\tR\0009\n\22\0=\n)\t=\t\31\b=\bT\a=\aU\0065\aX\0005\bV\0005\tW\0009\n\v\0=\n)\t=\t\31\b=\bY\a5\bZ\0005\t[\0009\n\1\0=\n)\t=\t\31\b=\b\\\a5\b]\0005\t^\0009\n\17\0=\n)\t=\t\31\b=\b_\a5\b`\0005\ta\0009\n\4\0=\n)\t=\t\31\b=\bb\a=\ac\0065\aj\0005\be\0005\td\0=\tf\b5\tg\0=\th\b4\t\0\0=\ti\b=\bk\a5\bo\0005\tl\0004\n\b\0009\v&\0069\v!\v>\v\1\n9\v5\0069\v+\v>\v\2\n9\vU\0069\vT\v>\v\3\n9\vP\0069\vB\v>\v\4\n9\vP\0069\vG\v>\v\5\n9\vP\0069\vO\v>\v\6\n9\vP\0069\v+\v>\v\a\n=\nm\t4\n\3\0009\v&\0069\v!\v>\v\1\n9\v5\0069\v+\v>\v\2\n=\nn\t=\t!\b5\tp\0004\n\0\0=\nm\t4\n\0\0=\nn\t=\tq\b5\tr\0004\n\t\0009\vc\0069\v\\\v>\v\1\n9\vc\0069\v_\v>\v\2\n9\vc\0069\vb\v>\v\3\n9\v5\0069\v4\v>\v\4\n9\vc\0069\vY\v>\v\5\n9\v8\6>\v\6\n9\v;\6>\v\a\n9\v&\0069\v$\v>\v\b\n=\nm\t4\n\0\0=\nn\t=\t$\b6\t\26\0'\vs\0B\t\2\0029\tt\t5\vv\0009\fu\0=\fw\v9\f)\0=\fx\v=\by\v=\az\v=\1{\vB\t\2\0012\0\0ÄK\0\1\0\19vi_mode_colors\15properties\15components\15default_fg\15default_bg\1\0\0\abg\nsetup\vfeline\1\0\0\bmid\1\0\0\1\0\0\rinactive\vactive\1\0\0\19force_inactive\1\0\0\rbufnames\rbuftypes\1\2\0\0\rterminal\14filetypes\1\0\0\1\3\0\0\rNvimTree\vpacker\bgit\vremove\1\0\0\1\0\1\rprovider\21git_diff_removed\vchange\1\0\0\1\0\1\rprovider\21git_diff_changed\badd\1\0\0\1\0\1\rprovider\19git_diff_added\vbranch\1\0\0\1\0\1\nstyle\tbold\1\0\3\rleft_sep\6 \ticon\tÓÇ† \rprovider\15git_branch\blsp\tname\1\0\0\1\0\0\1\0\3\rleft_sep\6 \ticon\tÔà≥ \rprovider\21lsp_client_names\fdiagnos\thint\1\0\0\0\1\0\1\rprovider\21diagnostic_hints\1\0\0\0\1\0\1\rleft_sep\6 \0\twarn\1\0\0\0\1\0\1\rleft_sep\6 \0\berr\1\0\0\1\0\0\fenabled\0\1\0\1\rleft_sep\6 \0\15scroll_bar\1\0\1\nstyle\tbold\1\0\2\rleft_sep\6 \rprovider\15scroll_bar\20line_percentage\1\0\1\nstyle\tbold\1\0\2\rleft_sep\6 \rprovider\20line_percentage\tfile\aos\1\0\1\nstyle\tbold\rprovider\1\0\1\rleft_sep\6 \ttype\1\0\1\rprovider\14file_type\rencoding\1\0\1\nstyle\tbold\1\0\2\rleft_sep\6 \rprovider\18file_encoding\tinfo\1\0\0\afg\1\0\1\nstyle\tbold\1\0\1\rprovider\14file_info\fvi_mode\1\0\0\nright\0\1\0\2\rleft_sep\6 \rprovider\b‚ñä\tleft\1\0\0\ahl\0\1\0\2\14right_sep\6 \rprovider\b‚ñä\29feline.providers.vi_mode\25feline.providers.lsp\frequire\0\0\tNONE\vyellow\tTERM\nSHELL\fCOMMAND\vSELECT\vorange\tMORE\nENTER\tcyan\14V-REPLACE\fREPLACE\vviolet\nBLOCK\tblue\aOP\vVISUAL\fmagenta\vINSERT\bred\vNORMAL\1\0\0\ngreen\1\0\v\tblue\f#61afef\vviolet\f#a9a1e1\bred\f#e86671\vorange\f#d19a66\ngreen\f#98c379\rdarkblue\f#081633\tcyan\f#56b6c2\vyellow\f#e0af68\afg\f#abb2bf\abg\f#282c34\fmagenta\f#c678dd\0", "config", "feline.nvim")
time([[Config for feline.nvim]], false)
-- Config for: auto-session
time([[Config for auto-session]], true)
try_loadstring("\27LJ\2\n∫\1\0\0\a\0\t\0\0156\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\a\0009\4\4\0'\5\5\0009\6\6\0&\4\6\4=\4\b\3B\1\2\1K\0\1\0\26auto_session_root_dir\1\0\1\25auto_restore_enabled\1\rpath_sep\fsession\14cache_dir\nsetup\17auto-session\22core.utils.global\frequire\0", "config", "auto-session")
time([[Config for auto-session]], false)
-- Config for: format.nvim
time([[Config for format.nvim]], true)
try_loadstring("\27LJ\2\n°\1\0\1\5\0\3\0\0056\1\0\0009\1\1\1'\3\2\0\18\4\0\0D\1\3\0|lua-format -i --no-keep-simple-function-one-line --no-break-after-operator --column-limit=150 --break-after-table-lb %s\vformat\vstringF\0\1\5\0\3\0\0056\1\0\0009\1\1\1'\3\2\0\18\4\0\0D\1\3\0!prettier --stdin-filepath %s\vformat\vstringF\0\1\5\0\3\0\0056\1\0\0009\1\1\1'\3\2\0\18\4\0\0D\1\3\0!prettier --stdin-filepath %s\vformat\vstring1\0\1\5\0\3\0\0056\1\0\0009\1\1\1'\3\2\0\18\4\0\0D\1\3\0\frufo %s\vformat\vstringF\0\1\5\0\3\0\0056\1\0\0009\1\1\1'\3\2\0\18\4\0\0D\1\3\0!prettier --stdin-filepath %s\vformat\vstringF\0\1\5\0\3\0\0056\1\0\0009\1\1\1'\3\2\0\18\4\0\0D\1\3\0!prettier --stdin-filepath %s\vformat\vstringF\0\1\5\0\3\0\0056\1\0\0009\1\1\1'\3\2\0\18\4\0\0D\1\3\0!prettier --stdin-filepath %s\vformat\vstringF\0\1\5\0\3\0\0056\1\0\0009\1\1\1'\3\2\0\18\4\0\0D\1\3\0!prettier --stdin-filepath %s\vformat\vstring˝\3\1\0\a\0\"\0Q6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0004\3\3\0005\4\4\0005\5\3\0=\5\5\4>\4\1\3=\3\a\0024\3\3\0005\4\t\0004\5\3\0003\6\b\0>\6\1\5=\5\5\4>\4\1\3=\3\n\0024\3\3\0005\4\f\0004\5\3\0003\6\v\0>\6\1\5=\5\5\4>\4\1\3=\3\r\0024\3\3\0005\4\15\0004\5\3\0003\6\14\0>\6\1\5=\5\5\4>\4\1\3=\3\16\0024\3\3\0005\4\18\0004\5\3\0003\6\17\0>\6\1\5=\5\5\4>\4\1\3=\3\19\0024\3\3\0005\4\21\0004\5\3\0003\6\20\0>\6\1\5=\5\5\4>\4\1\3=\3\22\0024\3\3\0005\4\24\0004\5\3\0003\6\23\0>\6\1\5=\5\5\4>\4\1\3=\3\25\0024\3\3\0005\4\27\0004\5\3\0003\6\26\0>\6\1\5=\5\5\4>\4\1\3=\3\28\0024\3\3\0005\4\30\0004\5\3\0003\6\29\0>\6\1\5=\5\5\4>\4\1\3=\3\31\2B\0\2\0016\0 \0009\0\5\0'\2!\0B\0\2\1K\0\1\0'autocmd BufWritePost * FormatWrite\bvim\tyaml\1\0\0\0\tjson\1\0\0\0\bcss\1\0\0\0\thtml\1\0\0\0\truby\1\0\0\0\15typescript\1\0\0\0\15javascript\1\0\0\0\blua\1\0\0\0\6*\1\0\0\bcmd\1\0\0\1\2\0\0\24sed -i 's/[ \t]*$//'\nsetup\vformat\frequire\0", "config", "format.nvim")
time([[Config for format.nvim]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\nµ\1\0\0\4\0\14\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0=\3\r\2B\0\2\1K\0\1\0\thtml\1\0\1\nnames\1\bvim\1\0\1\nnames\2\tsass\1\0\1\vrgb_fn\2\tscss\1\0\1\vrgb_fn\2\bcss\1\0\1\vrgb_fn\2\1\2\0\0\6*\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\nC\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\0\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: hop
time([[Config for hop]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\bhop\frequire\0", "config", "hop")
time([[Config for hop]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n∞\5\0\0\5\0\20\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3=\3\15\0025\3\16\0=\3\17\0025\3\18\0=\3\19\2B\0\2\1K\0\1\0\16watch_index\1\0\1\rinterval\3Ë\a\fkeymaps\1\0\2\vbuffer\2\fnoremap\2\nsigns\1\0\6\nnumhl\1\18sign_priority\3\6\23use_decoration_api\1\23current_line_blame\2\20update_debounce\3»\1\vlinehl\1\17changedelete\1\0\4\ttext\6=\vlinehl\21GitSignsChangeLn\nnumhl\21GitSignsChangeNr\ahl\19GitSignsChange\14topdelete\1\0\4\ttext\b‚Äæ\vlinehl\21GitSignsDeleteLn\nnumhl\21GitSignsDeleteNr\ahl\19GitSignsDelete\vdelete\1\0\4\ttext\6_\vlinehl\21GitSignsDeleteLn\nnumhl\21GitSignsDeleteNr\ahl\19GitSignsDelete\vchange\1\0\4\ttext\6~\vlinehl\21GitSignsChangeLn\nnumhl\21GitSignsChangeNr\ahl\19GitSignsChange\badd\1\0\0\1\0\4\ttext\6+\vlinehl\18GitSignsAddLn\nnumhl\18GitSignsAddNr\ahl\16GitSignsAdd\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\n¡\16\0\0\n\0D\0_6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0005\4\5\0005\5\4\0=\5\6\0045\5\a\0=\5\b\0045\5\t\0005\6\n\0=\6\v\5=\5\f\4B\2\2\0015\2\24\0005\3\r\0005\4\14\0=\4\15\0035\4\16\0=\4\17\0035\4\18\0=\4\19\0035\4\20\0=\4\21\0035\4\22\0=\4\23\3=\3\19\0025\3\25\0005\4\26\0=\4\27\0035\4\28\0=\4\29\0035\4\30\0=\4\31\0035\4 \0=\4\23\0035\4!\0=\4\"\0035\4#\0=\4$\0035\4%\0=\4&\0035\4'\0=\4(\0035\4)\0=\4\21\0035\4*\0=\4\19\0035\4+\0=\4,\3=\3-\0025\3.\0005\4/\0=\0040\0035\0041\0=\4\23\0035\0042\0=\4\21\0035\0043\0=\0044\3=\3\23\0025\0035\0005\0046\0=\0047\0035\0048\0=\4\17\3=\0037\0025\0039\0005\4:\0=\4;\0035\4<\0=\4-\0035\4=\0=\4(\3=\3;\0025\3>\0=\3?\2)\3\0\0)\4\n\0)\5\1\0M\3\6Ä6\a@\0\18\t\6\0B\a\2\2'\bA\0<\b\a\2O\3˙9\3B\0\18\5\2\0005\6C\0B\3\3\1K\0\1\0\1\0\1\vprefix\f<space>\rregister\21which_key_ignore\rtostring\6z\1\3\0\0\21<cmd>ZenMode<cr>\rZen Mode\1\3\0\0\19<cmd>copen<cr>\23Open Quickfix List\1\3\0\0\19<cmd>lopen<cr>\23Open Location List\6x\1\3\0\0\27<cmd>TroubleToggle<cr>\fTrouble\1\0\1\tname\f+errors\1\3\0\0000<cmd>Telescope file_browser cwd=~/Works<cr>\19Browse ~/Works\6p\1\3\0\0\31<cmd>Telescope project<cr>\17Open Project\1\0\1\tname\r+project\6n\1\3\0\0\18<cmd>enew<cr>\rNew File\1\3\0\0 <cmd>Telescope oldfiles<cr>\21Open Recent File\1\3\0\0\"<cmd>Telescope find_files<cr>\14Find File\6t\1\3\0\0\28<cmd>NvimTreeToggle<cr>\rNvimTree\1\0\1\tname\n+file\6l\6S\1\3\0\0005<cmd>Telescope lsp_dynamic_workspace_symbols<cr>\22Workspace Symbols\1\3\0\0\28<cmd>SymbolsOutline<cr>\21Document Symbols\1\3\0\0&<cmd>lua vim.lsp.buf.rename()<cr>\vRename\6q\1\3\0\0 <cmd>Telescope quickfix<cr>\rQuickfix\6k\1\3\0\0000<cmd>lua vim.lsp.diagnostic.goto_prev()<cr>\20Prev Diagnostic\6j\1\3\0\0000<cmd>lua vim.lsp.diagnostic.goto_next()<cr>\20Next Diagnostic\6i\1\3\0\0\21<cmd>LspInfo<cr>\tInfo\1\3\0\0*<cmd>lua vim.lsp.buf.formatting()<cr>\vFormat\6w\1\3\0\0001<cmd>Telescope lsp_workspace_diagnostics<cr>\26Workspace Diagnostics\6d\1\3\0\0000<cmd>Telescope lsp_document_diagnostics<cr>\25Document Diagnostics\6a\1\3\0\0+<cmd>lua vim.lsp.buf.code_action()<cr>\16Code Action\1\0\1\tname\t+LSP\1\0\0\6f\1\3\0\0007<cmd>lua require('spectre').open_file_search()<cr>&Replace in current file (Spectre)\6r\1\3\0\0005viw<cmd>lua require('spectre').open_visual()<cr>\22Replace (Spectre)\6s\1\3\0\0,<cmd>Telescope lsp_document_symbols<cr>\16Goto Symbol\6b\1\3\0\0001<cmd>Telescope current_buffer_fuzzy_find<cr>\vBuffer\6g\1\3\0\0!<cmd>Telescope live_grep<cr>\tGrep\1\0\1\tname\f+search\fplugins\fpresets\1\0\a\6g\1\6z\1\bnav\2\fwindows\2\17text_objects\1\fmotions\1\14operators\1\1\0\3\rspelling\1\14registers\1\nmarks\1\rtriggers\1\2\0\0\f<space>\vhidden\1\0\1\14show_help\2\1\t\0\0\r<silent>\n<cmd>\n<Cmd>\t<CR>\tcall\blua\a^:\a^ \nsetup\30which-key.plugins.presets\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: nvim-hlslens
time([[Config for nvim-hlslens]], true)
try_loadstring("\27LJ\2\n∆\4\0\5\19\0\20\1f6\5\0\0009\5\1\0059\5\2\5\b\5\0\0X\5\2Ä+\5\1\0X\6\1Ä+\5\2\0,\6\b\0006\t\3\0009\t\4\t\18\v\4\0B\t\2\2)\n\1\0\1\n\t\0X\n\18Ä6\n\5\0009\n\6\n'\f\a\0\18\r\t\0)\14\1\0\0\14\4\0X\14\2Ä+\14\1\0X\15\1Ä+\14\2\0\4\5\14\0X\14\2Ä'\14\b\0X\15\1Ä'\14\t\0B\n\4\2\18\6\n\0X\n\14Ä\t\t\0\0X\n\vÄ\b\4\0\0X\n\2Ä+\n\1\0X\v\1Ä+\n\2\0\4\5\n\0X\n\2Ä'\6\b\0X\n\1Ä'\6\t\0X\n\1Ä'\6\n\0006\n\v\0008\f\3\1B\n\2\3\15\0\2\0X\f\27Ä\21\f\1\0\6\6\n\0X\r\tÄ6\r\5\0009\r\6\r'\15\f\0\18\16\6\0\18\17\3\0\18\18\f\0B\r\5\2\18\a\r\0X\r\aÄ6\r\5\0009\r\6\r'\15\r\0\18\16\3\0\18\17\f\0B\r\4\2\18\a\r\0004\r\3\0005\14\14\0>\14\1\r5\14\15\0>\a\1\14>\14\2\r\18\b\r\0X\f\14Ä6\f\5\0009\f\6\f'\14\16\0\18\15\6\0\18\16\3\0B\f\4\2\18\a\f\0004\f\3\0005\r\17\0>\r\1\f5\r\18\0>\a\1\r>\r\2\f\18\b\f\0009\f\19\0)\14\0\0\23\15\0\n\23\16\0\v\18\17\b\0\18\18\2\0B\f\6\1K\0\1\0\rset_virt\1\3\0\0\0\17HlSearchLens\1\3\0\0\6 \vIgnore\f[%s %d]\1\3\0\0\0\21HlSearchLensNear\1\3\0\0\6 \vIgnore\f[%d/%d]\15[%s %d/%d]\vunpack\5\bÔïÖ\bÔïù\t%d%s\vformat\vstring\babs\tmath\18searchforward\6v\bvim\2^\1\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0003\3\4\0=\3\5\2B\0\2\1K\0\1\0\18override_lens\0\1\0\1\14calm_down\2\nsetup\fhlslens\frequire\0", "config", "nvim-hlslens")
time([[Config for nvim-hlslens]], false)
-- Config for: zen-mode.nvim
time([[Config for zen-mode.nvim]], true)
try_loadstring("\27LJ\2\n:\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\rzen-mode\frequire\0", "config", "zen-mode.nvim")
time([[Config for zen-mode.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\nú\1\0\0\3\0\6\1\0176\0\0\0009\0\1\0009\0\2\0B\0\1\2\21\0\0\0\t\0\0\0X\0\5Ä6\0\0\0009\0\3\0'\2\4\0B\0\2\1X\0\4Ä6\0\0\0009\0\3\0'\2\5\0B\0\2\1K\0\1\0\rwincmd l0vnew | wincmd h | vert resize 30 | wincmd l\bcmd\19nvim_list_wins\bapi\bvim\0023\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\20NvimTreeRefresh\bcmd\bvimã\b\1\0\3\0\"\0R6\0\0\0003\1\2\0=\1\1\0006\0\3\0'\2\4\0B\0\2\0029\0\5\0003\2\6\0B\0\2\0016\0\a\0009\0\b\0)\1-\0=\1\t\0006\0\a\0009\0\b\0005\1\v\0=\1\n\0006\0\a\0009\0\b\0)\1\0\0=\1\f\0006\0\a\0009\0\b\0)\1\0\0=\1\r\0006\0\a\0009\0\b\0)\1\0\0=\1\14\0006\0\a\0009\0\b\0)\1\1\0=\1\15\0006\0\a\0009\0\b\0)\1\1\0=\1\16\0006\0\a\0009\0\b\0)\1\0\0=\1\17\0006\0\a\0009\0\b\0)\1\1\0=\1\18\0006\0\a\0009\0\b\0)\1\1\0=\1\19\0006\0\a\0009\0\b\0)\1\1\0=\1\20\0006\0\a\0009\0\b\0)\1\1\0=\1\21\0006\0\a\0009\0\b\0005\1\23\0=\1\22\0006\0\a\0009\0\b\0005\1\25\0=\1\24\0006\0\a\0009\0\b\0)\1\1\0=\1\26\0006\0\a\0009\0\b\0)\1\1\0=\1\27\0006\0\a\0009\0\b\0005\1\29\0005\2\30\0=\2\31\0015\2 \0=\2!\1=\1\28\0K\0\1\0\vfolder\1\0\5\nempty\bÔÑî\topen\bÓóæ\fdefault\bÓóø\fsymlink\bÔíÇ\15empty_open\bÔÑï\bgit\1\0\a\vstaged\b‚úì\runstaged\bÔëÑ\fdeleted\bÔëò\14untracked\b‚òÖ\fignored\b‚óå\frenamed\b‚ûú\runmerged\bÓúß\1\0\1\fdefault\5\20nvim_tree_icons\30nvim_tree_lsp_diagnostics\26nvim_tree_group_empty\1\0\4\18folder_arrows\3\1\nfiles\3\1\ffolders\3\1\bgit\3\1\25nvim_tree_show_icons\1\2\0\0\14dashboard\29nvim_tree_auto_ignore_ft\21nvim_tree_git_hl\24nvim_tree_gitignore\23nvim_tree_lint_lsp\29nvim_tree_indent_markers\23nvim_tree_tab_open\21nvim_tree_follow\27nvim_tree_hijack_netrw\28nvim_tree_disable_netrw\25nvim_tree_auto_close\24nvim_tree_auto_open\1\a\0\0\t.git\17node_modules\tdist\14tags.lock\n.tags\14tags.temp\21nvim_tree_ignore\20nvim_tree_width\6g\bvim\0\23on_nvim_tree_ready\21nvim-tree.events\frequire\0\17move_or_open\a_G\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: nvim-spectre
time([[Config for nvim-spectre]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fspectre\frequire\0", "config", "nvim-spectre")
time([[Config for nvim-spectre]], false)
-- Config for: ale
time([[Config for ale]], true)
try_loadstring("\27LJ\2\nÌ\6\0\0\b\0\31\00155\0\0\0006\1\1\0009\1\2\1+\2\1\0=\2\3\1'\2\5\0=\2\4\1)\2\1\0=\2\6\0015\2\t\0005\3\b\0=\3\n\2=\2\a\1)\2\1\0=\2\v\1*\2\0\0=\2\f\1)\2\1\0=\2\r\1'\2\15\0=\2\14\1'\2\17\0=\2\16\0016\2\1\0009\2\18\0029\2\19\0026\4\20\0009\4\21\4'\6\22\0009\a\23\0B\4\3\0A\2\0\0016\2\1\0009\2\18\0029\2\19\0026\4\20\0009\4\21\4'\6\24\0009\a\25\0B\4\3\0A\2\0\0016\2\26\0'\4\27\0B\2\2\0016\2\1\0009\2\2\2)\3\0\0=\3\28\0026\2\1\0009\2\2\2'\3\30\0=\3\29\2K\0\1\0\17.rubocop.yml\22vimrubocop_config\22vimrubocop_keymap\24nvim-ale-diagnostic\frequire\vyellowSautocmd Colorscheme * highlight SpellCap guifg=NONE cterm=undercurl guisp='%s'\bredSautocmd Colorscheme * highlight SpellBad guifg=NONE cterm=undercurl guisp='%s'\vformat\vstring\17nvim_command\bapi\tÔÅ± \21ale_sign_warning\tÔÜà \19ale_sign_error\18ale_set_signs\26ale_maximum_file_size(ale_cache_executable_check_failures\bcpp\1\0\0\1\2\0\0\14clangtidy\23ale_linters_ignore\20ale_disable_lsp\18%s --%linter%\24ale_echo_msg_format\16ale_enabled\6g\bvim\1\0\v\tblue\f#61afef\vviolet\f#a9a1e1\bred\f#e86671\vorange\f#d19a66\ngreen\f#98c379\rdarkblue\f#081633\tcyan\f#56b6c2\vyellow\f#e0af68\afg\f#abb2bf\abg\f#282c34\fmagenta\f#c678ddÄÄÄ\1\0", "config", "ale")
time([[Config for ale]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n≤\6\0\0\a\0\30\0?6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\21\0005\3\3\0005\4\4\0=\4\5\0036\4\0\0'\6\6\0B\4\2\0029\4\a\4=\4\b\0036\4\0\0'\6\6\0B\4\2\0029\4\t\4=\4\n\0036\4\0\0'\6\v\0B\4\2\0029\4\f\0049\4\r\4=\4\14\0036\4\0\0'\6\v\0B\4\2\0029\4\15\0049\4\r\4=\4\16\0036\4\0\0'\6\v\0B\4\2\0029\4\17\0049\4\r\4=\4\18\0035\4\19\0=\4\20\3=\3\22\0025\3\24\0005\4\23\0=\4\25\3=\3\26\2B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\27\0'\2\25\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\27\0'\2\28\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\27\0'\2\29\0B\0\2\1K\0\1\0\fproject\14ultisnips\19load_extension\15extensions\15fzy_native\1\0\0\1\0\2\28override_generic_sorter\1\25override_file_sorter\2\rdefaults\1\0\0\fset_env\1\0\1\14COLORTERM\14truecolor\21qflist_previewer\22vim_buffer_qflist\19grep_previewer\23vim_buffer_vimgrep\19file_previewer\bnew\19vim_buffer_cat\25telescope.previewers\19generic_sorter\29get_generic_fuzzy_sorter\16file_sorter\19get_fzy_sorter\22telescope.sorters\25file_ignore_patterns\1\4\0\0\v%.tags\n%tags\ttags\1\0\6\18results_width\4≥ÊÃô\3≥Êåˇ\3\21sorting_strategy\14ascending\20selection_caret\tÔÅ° \20prompt_position\btop\18prompt_prefix\nüî≠ \19color_devicons\2\nsetup\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-compe
time([[Config for nvim-compe]], true)
try_loadstring("\27LJ\2\nF\0\1\a\0\3\0\b6\1\0\0009\1\1\0019\1\2\1\18\3\0\0+\4\2\0+\5\2\0+\6\2\0D\1\5\0\27nvim_replace_termcodes\bapi\bvimõ\1\0\0\6\0\b\2\0286\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\2\23\0\0\0\b\0\1\0X\1\18Ä6\1\0\0009\1\1\0019\1\4\1'\3\3\0B\1\2\2\18\3\1\0009\1\5\1\18\4\0\0\18\5\0\0B\1\4\2\18\3\1\0009\1\6\1'\4\a\0B\1\3\2\v\1\0\0X\1\2Ä+\1\1\0X\2\1Ä+\1\2\0L\1\2\0\a%s\nmatch\bsub\fgetline\6.\bcol\afn\bvim\2\0¢\1\0\0\3\2\5\1\0236\0\0\0009\0\1\0009\0\2\0)\2\1\0B\0\2\2\t\0\0\0X\0\4Ä-\0\0\0'\2\3\0D\0\2\0X\0\vÄ-\0\1\0B\0\1\2\15\0\0\0X\1\4Ä-\0\0\0'\2\4\0D\0\2\0X\0\3Ä-\0\0\0'\2\4\0D\0\2\0K\0\1\0\0¿\1¿\n<Tab>!<Plug>(vsnip-expand-or-jump)\20vsnip#available\afn\bvim\2|\0\0\3\1\5\1\0156\0\0\0009\0\1\0009\0\2\0)\2ˇˇB\0\2\2\t\0\0\0X\0\4Ä-\0\0\0'\2\3\0D\0\2\0X\0\3Ä-\0\0\0'\2\4\0D\0\2\0K\0\1\0\0¿\f<S-Tab>\28<Plug>(vsnip-jump-prev)\19vsnip#jumpable\afn\bvim\2∏\6\1\0\b\0&\0B6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\0035\4\a\0=\4\b\0035\4\t\0=\4\n\0035\4\v\0=\4\f\0035\4\r\0=\4\14\3=\3\15\2B\0\2\0013\0\16\0003\1\17\0006\2\18\0003\3\20\0=\3\19\0026\2\18\0003\3\22\0=\3\21\0026\2\23\0009\2\24\0029\2\25\2'\4\26\0'\5\27\0'\6\28\0005\a\29\0B\2\5\0016\2\23\0009\2\24\0029\2\25\2'\4\30\0'\5\27\0'\6\28\0005\a\31\0B\2\5\0016\2\23\0009\2\24\0029\2\25\2'\4\26\0'\5 \0'\6!\0005\a\"\0B\2\5\0016\2\23\0009\2\24\0029\2\25\2'\4\30\0'\5 \0'\6!\0005\a#\0B\2\5\0016\2\0\0'\4$\0B\2\2\0029\2\2\0025\4%\0B\2\2\0012\0\0ÄK\0\1\0\1\0\2\17map_complete\2\vmap_cr\2$nvim-autopairs.completion.compe\1\0\1\texpr\2\1\0\1\texpr\2\27v:lua.s_tab_complete()\f<S-Tab>\1\0\1\texpr\2\6s\1\0\1\texpr\2\25v:lua.tab_complete()\n<Tab>\6i\20nvim_set_keymap\bapi\bvim\0\19s_tab_complete\0\17tab_complete\a_G\0\0\vsource\ftabnine\1\0\3\tkind\tÔÉ∂ \15max_reslts\3\6\rpriority\3»\1\rnvim_lsp\1\0\1\tkind\16 Óúñ  (LSP)\nvsnip\1\0\1\tkind\20 ÔÉÑ  (Snippet)\vbuffer\1\0\1\tkind\19 Ôêé  (Buffer)\tpath\1\0\a\nspell\1\18snippets_nvim\1\15treesitter\1\tomni\1\ttags\1\rnvim_lua\1\tcalc\1\1\0\1\tkind\17 Ôõó  (Path)\1\0\6\ndebug\1\18documentation\2\fenabled\2\25allow_prefix_unmatch\1\14preselect\venable\15min_length\3\1\nsetup\ncompe\frequire\0", "config", "nvim-compe")
time([[Config for nvim-compe]], false)
-- Config for: nvim-lspinstall
time([[Config for nvim-lspinstall]], true)
try_loadstring("\27LJ\2\nk\0\0\4\0\6\0\r6\0\0\0009\0\1\0009\0\2\0006\2\0\0009\2\1\0029\2\3\2B\2\1\0A\0\0\0016\0\0\0009\0\4\0'\2\5\0B\0\2\1K\0\1\0\tedit\bcmd\23get_active_clients\16stop_client\blsp\bvimR\0\0\5\0\5\0\v6\0\0\0009\0\1\0009\0\2\0B\0\1\0026\1\0\0009\1\3\1'\3\4\0\18\4\0\0&\3\4\3B\1\2\1K\0\1\0\nedit \bcmd\17get_log_path\blsp\bvimY\0\2\a\1\3\0\a-\2\0\0009\2\0\2\18\4\1\0'\5\1\0'\6\2\0B\2\4\1K\0\1\0\0¿\27v:lua.vim.lsp.omnifunc\romnifunc\24nvim_buf_set_option•\2\0\0\4\1\15\0\0226\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\0029\1\4\0009\1\5\0019\1\6\1+\2\2\0=\2\a\0019\1\4\0009\1\5\0019\1\6\0015\2\n\0005\3\t\0=\3\v\2=\2\b\0015\1\f\0=\0\r\1-\2\0\0=\2\14\1L\1\2\0\4¿\14on_attach\17capabilities\1\0\0\15properties\1\0\0\1\4\0\0\18documentation\vdetail\24additionalTextEdits\19resolveSupport\19snippetSupport\19completionItem\15completion\17textDocument\29make_client_capabilities\rprotocol\blsp\bvimö\1\0\0\n\4\5\0\24-\0\0\0009\0\0\0B\0\1\1-\0\0\0009\0\1\0B\0\1\0026\1\2\0\18\3\0\0B\1\2\4H\4\vÄ-\6\1\0B\6\1\2\a\5\3\0X\a\2Ä-\a\2\0=\a\4\6-\a\3\0008\a\5\a9\a\0\a\18\t\6\0B\a\2\1F\4\3\3R\4ÛK\0\1\0\2¿\5¿\6¿\1¿\rsettings\blua\npairs\22installed_servers\nsetup5\0\0\3\1\3\0\a-\0\0\0B\0\1\0016\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\a¿\fbufdo e\bcmd\bvim \r\1\0\r\0;\0p6\0\0\0009\0\1\0006\1\2\0'\3\3\0B\1\2\0026\2\2\0'\4\4\0B\2\2\0026\3\2\0'\5\5\0B\3\2\0029\4\6\0035\6\a\0B\4\2\0016\4\b\0003\5\n\0=\5\t\0046\4\b\0003\5\f\0=\5\v\0046\4\0\0009\4\r\0049\4\14\0045\5\16\0=\5\15\0046\4\0\0009\4\17\4'\6\18\0B\4\2\0016\4\0\0009\4\17\4'\6\19\0B\4\2\0016\4\0\0009\4\17\4'\6\20\0B\4\2\0016\4\0\0009\4\17\4'\6\21\0B\4\2\0016\4\0\0009\4\17\4'\6\22\0B\4\2\0016\4\0\0009\4\17\4'\6\23\0B\4\2\0016\4\0\0009\4\r\0049\4\24\0046\5\0\0009\5\r\0059\5\26\0056\a\0\0009\a\r\a9\a\27\a9\a\28\a5\b\29\0005\t\30\0=\t\31\bB\5\3\2=\5\25\0043\4 \0003\5!\0005\0064\0005\a'\0005\b\"\0006\t\0\0009\t#\t6\v$\0009\v%\v'\f&\0B\t\3\2=\t%\b=\b(\a5\b)\0005\t*\0=\t+\b=\b,\a5\b1\0004\t\0\b6\n\0\0009\n-\n9\n.\n'\f/\0B\n\2\2+\v\2\0<\v\n\t6\n\0\0009\n-\n9\n.\n'\f0\0B\n\2\2+\v\2\0<\v\n\t=\t2\b=\b3\a=\a5\0063\a6\0\18\b\a\0B\b\1\0013\b8\0=\b7\0026\b\0\0009\b\1\b9\b9\b'\n:\0B\b\2\0012\0\0ÄK\0\1\0Mcommand! LspCapabilities lua require('settings._lsp.lsp-capabilities')()\17nvim_command\0\22post_install_hook\0\bLua\1\0\0\14workspace\flibrary\1\0\0\28$VIMRUNTIME/lua/vim/lsp\20$VIMRUNTIME/lua\vexpand\afn\16diagnostics\fglobals\1\3\0\0\bvim\19packer_plugins\1\0\1\venable\2\fruntime\1\0\0\6;\tpath\fpackage\nsplit\1\0\1\fversion\vLuaJIT\0\0\nsigns\1\0\2\venable\2\rpriority\3\20\1\0\3\17virtual_text\2\14underline\2\21update_in_insert\1\27on_publish_diagnostics\15diagnostic\twith$textDocument/publishDiagnostics\rhandlers9command! -nargs=0 LspRestart call v:lua.reload_lsp()7command! -nargs=0 LspLog call v:lua.open_lsp_log()0sign define LspDiagnosticsSignHint text=ÔÅö7sign define LspDiagnosticsSignInformation text=ÔÅö3sign define LspDiagnosticsSignWarning text=ÔÅ±1sign define LspDiagnosticsSignError text=ÔÅó\bcmd\1\26\0\0\18 Ôíû  (Text) \19 Ôö¶  (Method)\21 Ôûî  (Function)\24 Ôê•  (Constructor)\18 Ô¥≤  (Field)\21[Óúñ] (Variable)\18 Ô†ñ  (Class)\22 Ô∞Æ  (Interface)\19 Ôô®  (Module)\20 Ô™∂ (Property)\17 Ôëµ  (Unit)\18 Ô¢ü  (Value)\16 Ô©ó (Enum)\20 Ô†ä  (Keyword)\20 ÔÉÑ  (Snippet)\18 Ô£ó  (Color)\17 Ôúì  (File)\22 Ôúú  (Reference)\19 Ôùä  (Folder)\23 ÔÖù  (EnumMember)\21 Ô≤Ä  (Constant)\19 Ô≥§  (Struct)\18 ÔÉß  (Event)\21 Ôó´  (Operator)\26 ÔûÉ  (TypeParameter)\23CompletionItemKind\rprotocol\blsp\0\17open_lsp_log\0\15reload_lsp\a_G\1\0\1\21code_action_icon\tüí°\18init_lsp_saga\flspsaga\15lspinstall\14lspconfig\frequire\bapi\bvim\0", "config", "nvim-lspinstall")
time([[Config for nvim-lspinstall]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: neoscroll.nvim
time([[Config for neoscroll.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "neoscroll.nvim")
time([[Config for neoscroll.nvim]], false)
-- Config for: vim-colorschemes
time([[Config for vim-colorschemes]], true)
try_loadstring("\27LJ\2\n¥\1\0\0\3\0\n\0\0176\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0006\0\0\0009\0\6\0+\1\2\0=\1\a\0006\0\0\0009\0\b\0'\2\t\0B\0\2\1K\0\1\0\30 colorscheme OceanicNext \bcmd\18termguicolors\bopt\24[[48;2;%lu;%lu;%lum\tt_8b\24[[38;2;%lu;%lu;%lum\tt_8f\ago\bvim\0", "config", "vim-colorschemes")
time([[Config for vim-colorschemes]], false)
-- Config for: dashboard-nvim
time([[Config for dashboard-nvim]], true)
try_loadstring("\27LJ\2\n\t\0\0\n\0003\0^6\0\0\0'\2\1\0B\0\2\0029\1\2\0006\2\3\0009\2\4\0029\2\5\0026\4\3\0009\4\4\0049\4\6\4'\6\a\0'\a\b\0)\b\0\0)\t\1\0B\4\5\0A\2\0\0026\3\3\0009\3\t\3'\4\v\0=\4\n\0036\3\3\0009\3\t\3'\4\r\0=\4\f\0036\3\3\0009\3\t\3'\4\15\0=\4\14\0036\3\3\0009\3\t\3\18\4\1\0'\5\17\0&\4\5\4=\4\16\0036\3\3\0009\3\t\3)\4\f\0=\4\18\0036\3\3\0009\3\t\3)\4P\0=\4\19\0036\3\3\0009\3\t\3'\4\21\0=\4\20\0036\3\3\0009\3\t\0035\4\26\0005\5\24\0005\6\23\0=\6\25\5=\5\27\0045\5\29\0005\6\28\0=\6\25\5=\5\30\0045\5 \0005\6\31\0=\6\25\5=\5!\0045\5#\0005\6\"\0=\6\25\5=\5$\0045\5&\0005\6%\0=\6\25\5'\6'\0\18\a\1\0'\b(\0&\6\b\6=\6)\5=\5*\0045\5,\0005\6+\0=\6\25\5'\6-\0\18\a\1\0'\b.\0&\6\b\6=\6)\5=\5/\4=\4\22\0036\3\3\0009\3\t\0034\4\3\0'\0051\0\18\6\2\0'\a2\0&\5\a\5>\5\1\4=\0040\3K\0\1\0\r plugins\22üê¨ Nvim loaded \28dashboard_custom_footer\6f\19/.config/nvim/\30Telescope find_files cwd=\1\0\0\1\2\0\0\29Óò´  Neovim Config Files\6e\fcommand\27/.config/nvim/init.lua\a:e\1\0\0\1\2\0\0\29Óòï  Config             \6d\1\0\1\fcommand\24Telescope live_grep\1\2\0\0\29Óòí  Search Text        \6c\1\0\1\fcommand2:lua require('auto-session').RestoreSession()\1\2\0\0\29Ôë§  Load Last Session  \6b\1\0\1\fcommand\23Telescope oldfiles\1\2\0\0\29ÓéÖ  Recent Files       \6a\1\0\0\16description\1\0\1\fcommand1Telescope find_files find_command=rg,--files\1\2\0\0\29Ôúù  Find File          \29dashboard_custom_section\14telescope dashboard_default_executive!dashboard_preview_file_width\"dashboard_preview_file_height$/.config/nvim/static/neovim.cat\27dashboard_preview_file\18lolcat -F 0.3\31dashboard_preview_pipeline\bcat\30dashboard_preview_command\nüê¨ \26dashboard_footer_icon\6g\6*/~/.local/share/nvim/site/pack/packer/start\rglobpath\blen\afn\bvim\thome\22core.utils.global\frequire\0", "config", "dashboard-nvim")
time([[Config for dashboard-nvim]], false)
-- Config for: numb.nvim
time([[Config for numb.nvim]], true)
try_loadstring("\27LJ\2\nX\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\17show_numbers\2\20show_cursorline\2\nsetup\tnumb\frequire\0", "config", "numb.nvim")
time([[Config for numb.nvim]], false)
-- Config for: lsp-rooter.nvim
time([[Config for lsp-rooter.nvim]], true)
try_loadstring("\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15lsp-rooter\frequire\0", "config", "lsp-rooter.nvim")
time([[Config for lsp-rooter.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n—\2\0\0\4\0\16\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0=\3\r\0025\3\14\0=\3\15\2B\0\2\1K\0\1\0\fmatchup\1\0\1\venable\2\frainbow\1\0\2\venable\2\18extended_mode\2\fautotag\1\0\1\venable\2\vindent\1\0\1\venable\2\14highlight\1\0\1\venable\2\21ensure_installed\1\0\0\1\r\0\0\truby\15javascript\thtml\bcss\blua\nquery\njsonc\15typescript\15dockerfile\fgraphql\tscss\tyaml\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd nvim-ts-rainbow ]]
time([[Sequenced loading]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'markdown-preview.nvim'}, { ft = "markdown" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufRead * ++once lua require("packer.load")({'todo-comments.nvim'}, { event = "BufRead *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: ".v:exception | echom "Please check your config for correctness" | echohl None')
end
