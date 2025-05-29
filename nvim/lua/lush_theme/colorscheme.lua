--local lush = require('lush')
local hsl = lush.hsl

-- Define your custom colors
local colors = {
black   = hsl(0,0,35),
red     = hsl(350,70,60),
magenta = hsl(300,40,60),
blue    = hsl(220,55,50),
green   = hsl(170,45,60),
cyan    = hsl(210,60,70),
navy     = hsl(210,30,13),
orange  = hsl(30,70,60),
yellow  = hsl(45,80,60),
white   = hsl(0,0,100),
}

-- Define your highlights using lush
return lush(function()
  return {
    Normal     { fg = colors.white, bg = "#13131b" },  -- Normal text
    Comment    { fg = colors.black },
    Visual     { bg = colors.navy },-- Highlighted selection
    String     { fg = colors.cyan},  -- String literals
    Keyword    { fg = colors.magenta, gui = "bold" },  -- Keywords in bold
    Function   { fg = colors.green},-- Highlighted selection
    Type       { fg = colors.orange},  -- Highlighted selection
    Error      { fg = colors.red},  -- Error messages
    Todo       { fg = colors.yellow },  -- Todo items
    LineNr     { fg = colors.cyan},  -- Line numbers
    CursorLine { bg = colors.navy },
    TelescopeNormal       { fg = colors.white, bg = "#13131b" },
    TelescopeBorder       { fg = colors.navy, bg = "#13131b" },
    TelescopePromptTitle  { fg = colors.cyan },
    TelescopePromptBorder { fg = colors.navy },
    TelescopePromptNormal { fg = colors.cyan },
    TelescopeSelection    { fg = colors.cyan, bg = colors.navy },
    TelescopeMatching     { fg = colors.cyan, gui = "bold" },
  }
end)

