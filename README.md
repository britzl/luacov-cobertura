luacov-cobertura
================

LuaCov to Cobertura report generator

##Usage

 * Run tests with enabled [LuaCov](https://github.com/keplerproject/luacov)
 * Run `luacov-cobertura`

###Command line arguments
```
luacov-cobertura [-h] [-c FILE] [-o FILE]

optional arguments:
  -h            show this help message and exit
  -c FILE       configuration file
  -o FILE       output file
```

###Cobertura specific configuration

The configuration file may contain a cobertura.filenameparser function that can be used to manipulate the filenames in the stat file:
```
local configuration = {
	-- standard luacov configuration keys and values here
	statsfile = "foobar",

	cobertura = {
		-- this function will be called for each filename in the stats file
		-- the function may be used to manipulate the path before the file is
		-- processed by the report generator
		filenameparser = function(filename)
			-- do stuff with the filename here
			return filename .. "foobar"
		end,
	},
}
return configuration
```
