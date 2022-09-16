--                     __              __ 
--    ____ _   _______/ /_  ____ _____/ / 
--   / __ \ | / / ___/ __ \/ __ `/ __  (_)
--  / / / / |/ / /__/ / / / /_/ / /_/ /   
-- /_/ /_/|___/\___/_/ /_/\__,_/\__,_(_)  
--         __              __            __           
--   _____/ /_  ____ _____/ /_________  / /_  ______ _
--  / ___/ __ \/ __ `/ __  / ___/ ___/ / / / / / __ `/
-- / /__/ / / / /_/ / /_/ / /  / /___ / / /_/ / /_/ / 
-- \___/_/ /_/\__,_/\__,_/_/   \___(_)_/\__,_/\__,_/  
--
-- moved outside of the main nvim/custom directory,
-- because it's now a git repo and idk how to work
-- with submodules. so this is the wae, ln -s go brrrr

local M = {}

M.ui = {
  theme_toggle = { "catppuccin", "catppuccin-latte" },
  theme = "catppuccin",
}

M.plugins = require "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
