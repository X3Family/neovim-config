local lazyCoc = "%USERPROFILE%\\AppData\\Local\\"

local coc_plugins = {
   "coc-discord-rpc",
}

for _, plugin in ipairs(coc_plugins) do
   local result = vim.fn.system(
      "dir /ad " .. lazyCoc .. "coc\\extensions\\node_modules\\" .. plugin)
   if string.find(result, "The system cannot find the file specified.") ~= nil then
      vim.cmd("CocInstall " .. plugin)
   end
end
