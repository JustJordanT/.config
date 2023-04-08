require("jt")

-- Define the function to save the file
local function save_file()
    -- Check if the file has been changed
  if vim.bo.modified then
    vim.cmd('write')
    print('File saved.')
  else
    print('File not modified. Skipping save.')
  end
end

-- Set up the timer to trigger the save_file function every 1 minute
local timer = vim.loop.new_timer()
vim.loop.timer_start(timer, 60000, 60000, vim.schedule_wrap(save_file))

-- Explanation:
-- vim.loop.timer_start(delay, repeat_interval, callback) is a function provided by Neovim's Lua API for setting up timers.
-- The first argument 'delay' specifies the initial delay before the timer triggers, in milliseconds. In this example, it's set to 60000 milliseconds, which is equivalent to 1 minute.
-- The second argument 'repeat_interval' specifies the time interval between subsequent timer triggers, also in milliseconds. In this example, it's also set to 60000 milliseconds, indicating that the timer should repeat every 1 minute.
-- The third argument 'callback' is the function to be called when the timer triggers. In this case, it's set to 'save_file', which is a custom function defined to save the file using the 'write' Vim command.
-- The vim.schedule_wrap() function is used to wrap the 'save_file' function with Vim's event loop, so that it can be executed asynchronously and safely within Vim's environment.

