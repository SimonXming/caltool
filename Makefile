all: caltool

caltool:
	echo "Building caltool"
	swiftc main.swift PSEventHelper/PSEventHelper.swift -o caltool
