local function cycle_buff()
    local buf_list = {}
    local active_index = -1

    for _, b in ipairs(vim.fn.getbufinfo({buflisted = 1})) do
        local curr = 0
        if b.bufnr == vim.api.nvim_get_current_buf() then
            active_index = #buf_list + 1
            curr = 1
        end
        if curr == 1 or b.hidden == 1 then
            buf_list[#buf_list+1] = b.bufnr
        end
    end

    if #buf_list == 1 then
        return
    end

    vim.api.nvim_set_current_buf(buf_list[(active_index % #buf_list) + 1])
end

vim.api.nvim_create_user_command("NextBuff", cycle_buff, {})
vim.keymap.set("n", "<Tab>", cycle_buff, {silent = true})
