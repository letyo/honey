
<?php

	$page = basename($_SERVER['REQUEST_URI'], ".php");
	
	
	function load_template($filename) {
		if ($filename == 'index') {
			$filename = 'home';
		}
	    $file = 'page/' . $filename . '.php';
	    if (file_exists($file)) {
	    	include_once $file;
	    }
	}

?>