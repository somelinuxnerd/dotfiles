local M = {}

function M.isfile(path)
	local stat = vim.loop.fs_stat(path)
	return stat and stat.type == "file" or false
end

function M.isdir(path)
	local stat = vim.loop.fs_stat(path)
	return stat and stat.type == "directory" or false
end

function M.exists(path)
	return vim.loop.fs_stat(path) ~= nil
end

function M.join_paths(...)
	return table.concat({ ... }, "/")
end

function M.write_file(filename, contents)

	local filewrite = io.open(filename, "w")

	for _, line in ipairs(contents) do
		filewrite:write(line)
	end

	filewrite:close()

end

return M