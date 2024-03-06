local lazyCoc = "%USERPROFILE%\\AppData\\Local\\"

local coc_plugins = {
   "coc-discord-rpc",
   "coc-prisma",
}

for _, plugin in ipairs(coc_plugins) do
   local result = vim.fn.system(
      "dir /ad " .. lazyCoc .. "coc\\extensions\\node_modules\\" .. plugin)
   local file_exist_test_1 = string.find(result, "The system cannot find the file specified.") ~= nil
   local file_exist_test_2 = string.find(result, "File Not Found") ~= nil
   if file_exist_test_1 or file_exist_test_2 then
      vim.cmd("CocInstall " .. plugin)
   end
end
