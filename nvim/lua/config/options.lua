
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- LazyVim auto format
vim.g.autoformat = true


local opt = vim.opt

-- 显示
opt.expandtab = true            -- 用空格替代 Tab
opt.shiftwidth = 4              -- 缩进宽度
opt.tabstop = 4                 -- Tab 宽度
opt.smartindent = true          -- 智能缩进
opt.number = true               -- 显示行号
opt.relativenumber = true       -- 相对行号
opt.signcolumn = "yes"          -- 始终显示标记列（用于 LSP 诊断）
opt.cmdheight = 1               -- 命令行高度
opt.scrolloff = 8               -- 滚动时保留 8 行上下文
opt.sidescrolloff = 8           -- 横向滚动保留 8 列
opt.wrap = false                -- 禁用自动换行
opt.cursorline = true           -- 高亮当前行
opt.termguicolors = true        -- 启用真彩色
opt.splitright = true           -- 垂直分割窗口时，新窗口在右边
opt.splitbelow = true           -- 水平分割窗口时，新窗口在下方
opt.laststatus = 3              -- 全局状态栏

-- 文件处理
opt.encoding = "utf-8"          -- 文件编码
opt.fileencoding = "utf-8"      -- 写入文件编码
opt.backup = false              -- 禁用备份文件
opt.swapfile = false            -- 禁用交换文件
opt.undofile = true             -- 启用撤销历史记录

-- 搜索相关
opt.ignorecase = true           -- 搜索时忽略大小写
opt.smartcase = true            -- 如果输入大写字母，则区分大小写
opt.hlsearch = true             -- 高亮所有匹配结果
opt.incsearch = true            -- 实时显示搜索结果

-- 其他
opt.clipboard = "unnamedplus"   -- 使用系统剪贴板
opt.mouse = "a"                 -- 启用鼠标支持
opt.completeopt = { "menu", "menuone", "noselect" } -- 补全菜单优化
opt.shortmess:append("c")       -- 更简洁的消息显示
opt.iskeyword:append("-")       -- 将连字符视为单词的一部分
