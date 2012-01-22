$ ->
	mmtct.add_script("analytics", ".google-analytics.com/ga.js", "http://www", "https://ssl")
	_gaq = _gaq || []
	_gaq.push ['_setAccount', 'UA-28544230-1']
	_gaq.push ['_setDomainName', 'mmtct.com']
	_gaq.push ['_trackPageview']
