vim.cmd[[augroup highlight_yank]]
  vim.cmd[[autocmd!]]
  vim.cmd[[autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank()]]
vim.cmd[[augroup END]]

vim.cmd[[augroup xresources]]
  vim.cmd[[autocmd!]]
  vim.cmd[[autocmd BufWritePost *Xresources,*Xdefaults !xrdb -load %]]
vim.cmd[[augroup END]]
