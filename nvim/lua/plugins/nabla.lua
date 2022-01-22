local map = require('sobhanbera.mappings').map
map('n', '<F5>', ':lua require("nabla").action()<CR>')
map('n', '<leader>p', ':lua require("nabla").popup()<CR> " Customize with popup({border = ...})  : `single` (default), `double`, `rounded`')