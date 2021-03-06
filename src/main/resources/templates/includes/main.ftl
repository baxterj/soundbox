<#macro main title="Soundbox">
	<!doctype html>
	<html class="no-js" lang="">
	    <head>
	        <meta charset="utf-8">
	        <meta http-equiv="x-ua-compatible" content="ie=edge">
	        <title>${title}</title>
	        <meta name="description" content="">
	        <meta name="viewport" content="width=device-width, initial-scale=1">
	
	        <link rel="apple-touch-icon" href="apple-touch-icon.png">
	        <!-- Place favicon.ico in the root directory -->
	
	        <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
	        <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
	        <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-slider/6.1.5/css/bootstrap-slider.min.css">
	        <link rel="stylesheet" href="static/css/soundbox.css">
	
	        <script src="static/js/vendor/modernizr-2.8.3.min.js"></script>
	    </head>
	    <body>
	
	        <!--[if lt IE 8]>
	            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
	        <![endif]-->
			<#nested/>
	        
	        <script src="//code.jquery.com/jquery-1.12.0.min.js"></script>
	
	        <script>window.jQuery || document.write('<script src="static/js/vendor/jquery-1.12.0.min.js"><\/script>')</script>
	        <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
	        <script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-slider/6.1.5/bootstrap-slider.min.js"></script>
	        <script type="text/javascript" src="//www.youtube.com/iframe_api"></script>
	        <script src="static/js/main.js"></script>
	    </body>
	</html>
</#macro>
