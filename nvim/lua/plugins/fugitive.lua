local map = require('sobhanbera.mappings').map
map('n', '<leader>gst', ':G<CR>')
map('n', '<leader>dg', ':Gvdiffsplit<CR>')
map('n', '<leader>gl', ':G log -100<CR>')
map('', '<leader>gg', ':Git commit<CR>')
map('', '<leader>gp', ':Git push<CR>')