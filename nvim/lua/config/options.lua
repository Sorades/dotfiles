-- 常用选项
local opt = vim.opt

opt.number = true               -- 显示行号
opt.relativenumber = true       -- 相对行号
opt.tabstop = 4                 -- Tab 宽度
opt.shiftwidth = 4              -- 缩进宽度
opt.expandtab = true            -- 用空格替代 Tab
opt.smartindent = true          -- 智能缩进
opt.wrap = false                -- 禁用自动换行
opt.cursorline = true           -- 高亮当前行
opt.termguicolors = true        -- 启用真彩色
opt.splitright = true           -- 垂直分割窗口时，新窗口在右边
opt.splitbelow = true           -- 水平分割窗口时，新窗口在下方
opt.ignorecase = true           -- 搜索时忽略大小写
opt.smartcase = true            -- 如果输入大写字母，则区分大小写
opt.clipboard = "unnamedplus"   -- 使用系统剪贴板
opt.mouse = "a"                 -- 启用鼠标支持
