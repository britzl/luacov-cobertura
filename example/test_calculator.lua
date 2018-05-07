local calculator = require "example.calculator"

local function equals(actual, expected, message)
	assert(actual == expected, (message .. ". Expected: %f Actual: %f"):format(expected, actual))
end

equals(calculator.result(), 0, "Initial result")

equals(calculator.set(100), 100, "Setting the result")

equals(calculator.reset(), 0, "Resetting")

equals(calculator.add(10), 10, "Adding")
equals(calculator.add(5.5), 15.5, "Adding")

equals(calculator.sub(5.5), 10, "Subtracting")

equals(calculator.div(2), 5, "Dividing")

print("All is ok")
