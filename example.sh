echo "Running tests"
lua -lluacov example/test_calculator.lua
echo "Creating Cobertura report"
./bin/luacov-cobertura luacov.stats.out
