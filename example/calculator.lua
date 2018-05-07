local M = {}

local result = 0

function M.reset()
	result = 0
	return result
end

function M.set(v)
	result = v
	return result
end

function M.result()
	return result
end

function M.add(amount)
	result = result + amount
	return result
end

function M.sub(amount)
	result = result - amount
	return result
end

function M.mul(amount)
	result = result * amount
	return result
end

function M.div(amount)
	result = result / amount
	return result
end

return M
