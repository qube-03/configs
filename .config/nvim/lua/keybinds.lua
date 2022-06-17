local kset = vim.keymap.set
vim.g.mapleader = ' '
kset('n', ';',            ':')
kset('v', ';',            ':')

kset('n', '<leader>w',    ':w!<CR>')
kset('n', '<leader>x',    ':wq!<CR>')
kset('n', '<leader>q',    ':q!<CR>')

kset('n', 'n',            '<Left>')
kset('n', 'e',            '<Up>')
kset('n', 'i',            '<Down>')
kset('n', 'o',            '<Right>')

kset('n', '<leader>t',    ':tabnew<CR>')
kset('n', '<C-Left>',     ':tabp<CR>')
kset('n', '<C-Right>',    ':tabn<CR>')
kset('n', '<C-Up>',       ':wincmd k<CR>')
kset('n', '<C-Down>',     ':wincmd j<CR>')

kset('n', ',',            '<insert>')
kset('n', 'z',            '<Home>')
kset('n', '<S-z>',        '<End>')
kset('v', 'z',            '<Home>')
kset('v', '<S-z>',        '<End><Left>')
kset('n', 'l',            '<C-r>')
kset('n', '<C-a>',        '<Home>ggvG<End>')
kset('n', '*',            '*zz')

kset('i', '<C-BS>',       '<C-W>')
kset('i', '(',            '()<Left>')
kset('i', '{',            '{}<Left>')
kset('i', '[',            '[  ]<Left><Left>')
kset('i', '"',            '""<Left>')
kset('i', "'",            "''<Left>")
kset('i', '<',            '<><Left>')
kset('i', '<C-y>',        '<Up>')
kset('i', '<C-e>',        '<Down>')

kset('i', ';bashbang',    '#!/usr/bin/env bash')
kset('i', ';ifthen',      'if; then\n\nelse\n\n<Left><Left>fi<Up><Up><Up>')
kset('n', '<C-b>',        ':ColorizerToggle <CR>')
