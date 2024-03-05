local lazyCoc = "%USERPROFILE%\\AppData\\Local\\"
vim.fn.system("cd " .. lazyCoc .. "nvim-data\\lazy\\coc.nvim")
vim.fn.system("npm install")

local coc_plugins = {
   "coc-discord-rpc"
}

for _, plugin in ipairs(coc_plugins) do
   local result = vim.fn.system(
      "dir /ad " .. lazyCoc .. "coc\\extensions\\node_modules\\" .. plugin)

   if result == nil then
      vim.cmd("CocInstall " .. plugin)
   end
end
