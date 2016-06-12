<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>提交按钮特效</title>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" type="text/css" href="css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="css/demo.css" />
		<link rel="stylesheet" type="text/css" href="css/component.css" />
		<script src="js/modernizr.custom.js"></script>
	</head>
	<body>
		<div class="container">
			<header>
				<h1>表单提交按钮 <span>可显示提交进度的提交按钮</span></h1>
				<p class="note">Without support for <em>transform-style: preserve-3d</em> you will see the fallback style (fill horizontal).</p>
			</header>
			<div class="wrapper">
				<section>
					<h2>fill horizontal</h2>
					<button class="progress-button" data-style="fill" data-horizontal>Submit</button>
				</section>
				<section>
					<h2>fill vertical</h2>
					<button class="progress-button" data-style="fill" data-vertical>Submit</button>
				</section>
				<section>
					<h2>shrink horizontal</h2>
					<button class="progress-button" data-style="shrink" data-horizontal>Submit</button>
				</section>
				<section>
					<h2>shrink vertical</h2>
					<button class="progress-button" data-style="shrink" data-vertical>Submit</button>
				</section>
			</div>
			<div class="wrapper">
				<section>
					<h2>rotate-angle-bottom <br/>perspective</h2>
					<button class="progress-button" data-style="rotate-angle-bottom" data-perspective data-horizontal>Submit</button>
				</section>
				<section>
					<h2>rotate-angle-top <br/>perspective</h2>
					<button class="progress-button" data-style="rotate-angle-top" data-perspective data-horizontal>Submit</button>
				</section>
				<section>
					<h2>rotate-angle-left <br/>perspective</h2>
					<button class="progress-button" data-style="rotate-angle-left" data-perspective data-vertical>Submit</button>
				</section>
				<section>
					<h2>rotate-angle-right <br/>perspective</h2>
					<button class="progress-button" data-style="rotate-angle-right" data-perspective data-vertical>Submit</button>
				</section>
			</div>
			<div class="wrapper">
				<section>
					<h2>rotate-side-down <br/>perspective</h2>
					<button class="progress-button" data-style="rotate-side-down" data-perspective data-horizontal>Submit</button>
				</section>
				<section>
					<h2>rotate-side-up <br/>perspective</h2>
					<button class="progress-button" data-style="rotate-side-up" data-perspective data-horizontal>Submit</button>
				</section>
				<section>
					<h2>rotate-side-left <br/>perspective</h2>
					<button class="progress-button" data-style="rotate-side-left" data-perspective data-vertical>Submit</button>
				</section>
				<section>
					<h2>rotate-side-right <br/>perspective</h2>
					<button class="progress-button" data-style="rotate-side-right" data-perspective data-vertical>Submit</button>
				</section>
			</div>
			<div class="wrapper">
				<section>
					<h2>rotate-back <br/>perspective</h2>
					<button class="progress-button" data-style="rotate-back" data-perspective data-horizontal>Submit</button>
				</section>
				<section>
					<h2>flip-open <br/>perspective</h2>
					<button class="progress-button" data-style="flip-open" data-perspective data-horizontal>Submit</button>
				</section>
				<section>
					<h2>slide-down <br/>horizontal</h2>
					<button class="progress-button" data-style="slide-down" data-horizontal>Submit</button>
				</section>
				<section>
					<h2>move-up <br/>horizontal</h2>
					<button class="progress-button" data-style="move-up" data-horizontal>Submit</button>
				</section>
			</div>
			<div class="wrapper">
				<section>
					<h2>top-line <br/>horizontal</h2>
					<button class="progress-button" data-style="top-line" data-horizontal>Submit</button>
				</section>
				<section>
					<h2>lateral-lines <br/>vertical</h2>
					<button class="progress-button" data-style="lateral-lines" data-vertical>Submit</button>
				</section>
				<!--section>
					<h2>center-line <br/>horizontal</h2>
					<button class="progress-button" data-style="center-line" data-horizontal>Submit</button>
				</section-->
			</div>
		</div><!-- /container -->
		<script src="js/classie.js"></script>
		<script src="js/progressButton.js"></script>
		<script>
			[].slice.call( document.querySelectorAll( 'button.progress-button' ) ).forEach( function( bttn ) {
				new ProgressButton( bttn, {
					callback : function( instance ) {
						var progress = 0,
							interval = setInterval( function() {
								progress = Math.min( progress + Math.random() * 0.1, 1 );
								instance._setProgress( progress );

								if( progress === 1 ) {
									instance._stop(1);
									clearInterval( interval );
								}
							}, 200 );
					}
				} );
			} );
		</script>
	</body>
</html>