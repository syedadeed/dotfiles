local function run()
    -- Get the current buffer's file name and file type
    local file_name = vim.api.nvim_buf_get_name(0)
    local file_type = vim.api.nvim_buf_get_option(0, "filetype")

    -- Define the command based on the file type
    local command
    if file_type == "python" then
        command = "python '" .. file_name .. "'"
    elseif file_type == "lua" then
        command = "lua '" .. file_name .. "'"
    elseif file_type == "sh" then
        command = "bash '" .. file_name .. "'"
    elseif file_type == "c" then
        command = "gcc '" .. file_name .. "' && ./a.out && rm a.out"
    elseif file_type == "cpp" then
        command = "g++ '" .. file_name .. "' && ./a.out && rm a.out"
    elseif file_type == "javascript" then
        command = "node '" .. file_name .. "'"
    elseif file_type == "typescript" then
        command = "node '" .. file_name .. "'"
    elseif file_type == "go" then
        command = "go run '" .. file_name .. "'"
    else
        print("No support for the file type: " .. file_type)
        return
    end

    --Create the terminal window
    vim.cmd(":botright 10split | term")
    vim.cmd("startinsert")

    --this delay is to makes sure command only executes once the terminal session has been opened
    vim.api.nvim_command("sleep 100m")

    --Run the command
    vim.api.nvim_chan_send(vim.b.terminal_job_id, command .. "\n")
end
vim.api.nvim_create_user_command("Run", run, {})
vim.api.nvim_set_keymap("n", "<C-D>", ":Run<CR>", {silent = true})
