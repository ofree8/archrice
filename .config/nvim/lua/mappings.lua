local function nmap(command, value)
    vim.fn.nvim_set_keymap('n',command,value,{noremap = true, silent = true})
end

local function imap(command, value)
    vim.fn.nvim_set_keymap('i',command,value,{noremap = true, silent = true})
end

local function vmap(command, value)
    vim.fn.nvim_set_keymap('v',command,value,{noremap = true, silent = true})
end

local function tmap(command, value)
    vim.fn.nvim_set_keymap('t',command,value,{noremap = true, silent = true})
end

nmap('<A-L>', ':tabnext<CR>')
nmap('<A-H>', ':tabprevious<CR>')
nmap('<C-w>m', ':MaximizerToggle<CR>')
nmap('<leader>r', ':set hlsearch!<CR>')
nmap('<leader>un', ':UndotreeToggle<Cr>')
nmap('<leader>lc', ':<up>')
nmap('Q', ':q!<CR>')
imap('<C-b>', '<C-x><C-f>')
vmap('cp', '"+y')
nmap('cp', '"+y')
nmap('cpp', '"+yy')
vmap('zp', '"+p')
vmap('zP', '"+P')
nmap('zp', '"+p')
nmap('zP', '"+P')
vmap('<leader>p', '"_dP')
tmap(',,', [[<C-\><C-n>]])
nmap([[<C-h>]], [[:wincmd h<CR>]])
nmap([[<C-j>]], [[:wincmd j<CR>]])
nmap([[<C-k>]], [[:wincmd k<CR>]])
nmap([[<C-l>]], [[:wincmd l<CR>]])
nmap([[<a-.>]], [[<cmd>vertical resize +3<CR>]])
nmap([[<a-,>]], [[<cmd>vertical resize -3<CR>]])
nmap([[<a-=>]], [[<cmd>resize +3<CR>]])
nmap([[<a-->]], [[<cmd>resize -3<CR>]])
nmap('<leader>fd', ':Ex<CR>')
nmap('<leader>sC', [[:CheatWithoutComments<CR>]])
nmap('<leader>sc', [[:Cheat<CR>]])

return {
    nmap = nmap,
    imap = imap,
    vmap = vmap,
    tmap = tmap,
}
