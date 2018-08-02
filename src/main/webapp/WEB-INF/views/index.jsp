<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<html>

<head>
	<title>ViShare</title>
	<link rel="stylesheet" href="<c:url="/src/main/webapp/resources/css/project.css"/>" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>
	<header>
		<section class="row">
			<a href=#>
				<img id="logo" src="http://placeimg.com/100/50/tech" alt="ViSource Logo">
			</a>
			<button id="openbutton" onclick="w3_open()">&#9776;</button>
			<button id="openbutton" onclick="w3_open2()">&#x1F50D;</i></button>
			<input type="text" placeholder="Search">
			<nav>	
				<ul>
					<a href="#"><li><i class="fa fa-cog" aria-hidden="true"></i></li></a>
					<a href="#"><li>Sign In</li></a>
				</ul>
			</nav>
		</section>
	</header>
	
	<header id="search">
		<button id="closebutton" onclick="w3_close2()"><i class="fa fa-times" aria-hidden="true"></i></i></button>
		<input type="text" placeholder="Search">
	</header>
	
	<article class="sidenav clearfix w3-sidebar" id="sidenav">
		<section class="clearfix">
			<button id="closebutton" onclick="w3_close()"><i class="fa fa-times" aria-hidden="true"></i></i></button>
			<nav>	
				<ul>
					<a href="#"><i class="fa fa-home" aria-hidden="true"></i><li>Home</li></a>
					<a href="#"><i class="fa fa-play-circle-o" aria-hidden="true"></i><li><span>Subscriptions</span></li></a>
					<a href="#"><i class="fa fa-list" aria-hidden="true"></i><li>Playlists</li></a>
					<a href="#"><i class="fa fa-paw" aria-hidden="true"></i><li>Animals</li></a>
					<a href="#"><i class="fa fa-car" aria-hidden="true"></i><li>Cars</li></a>
					<a href="#"><i class="fa fa-smile-o" aria-hidden="true"></i><li>Funny</li></a>
					<a href="#"><i class="fa fa-gamepad" aria-hidden="true"></i><li>Gaming</li></a>
					<a href="#"><i class="fa fa-film" aria-hidden="true"></i><li>Movies</li></a>
					<a href="#"><i class="fa fa-music" aria-hidden="true"></i><li>Music</li></a>
					<a href="#"><i class="fa fa-pagelines" aria-hidden="true"></i><li>Nature</li></a>
					<a href="#"><i class="fa fa-newspaper-o" aria-hidden="true"></i><li>News</li></a>
					<a href="#"><i class="fa fa-futbol-o" aria-hidden="true"></i><li>Sports</li></a>
				</ul>
			</nav>
		</section>
	</article>
	
	<script>
		function w3_open() {
			document.getElementById("sidenav").style.display = "block";
		}
		function w3_close() {
			document.getElementById("sidenav").style.display = "none";
		}
		function w3_open2() {
			document.getElementById("search").style.display = "block";
		}
		function w3_close2() {
			document.getElementById("search").style.display = "none";
		}
	</script>
	
	<section class="content row">
		<button class="video newFirst" id="firstbutton" onclick="location.href='#'" type="button">
			<img class="col" id="firstvid" src="http://placeimg.com/300/300/bird/sepia" alt="vid">
			<p><span>Video Title</span>&nbsp;&nbsp;&nbsp;&nbsp;Author<span class="desc"><br><br>I've seen things you people wouldn't believe. Attack ships on fire off the shoulder of Orion. I watched C-beams glitter in the dark near the Tannhäuser Gate. All those moments will be lost in time like tears in rain. Time to die.</span></p>
		</button>
		<button class="video newFirst" onclick="location.href='#'" type="button">
			<img class="col" id="firstvid" src="http://placeimg.com/300/300/tech/grayscale" alt="vid">
			<p><span>Video Title</span>&nbsp;&nbsp;&nbsp;&nbsp;Author<span class="desc"><br><br>I've seen things you people wouldn't believe. Attack ships on fire off the shoulder of Orion. I watched C-beams glitter in the dark near the Tannhäuser Gate. All those moments will be lost in time like tears in rain. Time to die.</span></p>
		</button>
		<button class="video newFirst" onclick="location.href='#'" type="button">
			<img class="col" id="firstvid" src="http://placeimg.com/300/300/animal" alt="vid">
			<p><span>Video Title</span>&nbsp;&nbsp;&nbsp;&nbsp;Author<span class="desc"><br><br>I've seen things you people wouldn't believe. Attack ships on fire off the shoulder of Orion. I watched C-beams glitter in the dark near the Tannhäuser Gate. All those moments will be lost in time like tears in rain. Time to die.</span></p>
		</button>
	</section>
	<section class="content row">
		<button class="video newFirst" id="firstbutton" onclick="location.href='#'" type="button">
			<img class="col" id="firstvid" src="http://placeimg.com/640/480/arch" alt="vid">
			<p><span>Video Title</span>&nbsp;&nbsp;&nbsp;&nbsp;Author<span class="desc"><br><br>I've seen things you people wouldn't believe. Attack ships on fire off the shoulder of Orion. I watched C-beams glitter in the dark near the Tannhäuser Gate. All those moments will be lost in time like tears in rain. Time to die.</span></p>
		</button>
		<button class="video newFirst" onclick="location.href='#'" type="button">
			<img class="col" id="firstvid" src="http://placeimg.com/640/480/nature" alt="vid">
			<p><span>Video Title</span>&nbsp;&nbsp;&nbsp;&nbsp;Author<span class="desc"><br><br>I've seen things you people wouldn't believe. Attack ships on fire off the shoulder of Orion. I watched C-beams glitter in the dark near the Tannhäuser Gate. All those moments will be lost in time like tears in rain. Time to die.</span></p>
		</button>
		<button class="video newFirst" onclick="location.href='#'" type="button">
			<img class="col" id="firstvid" src="http://placeimg.com/640/480/animals" alt="vid">
			<p><span>Video Title</span>&nbsp;&nbsp;&nbsp;&nbsp;Author<span class="desc"><br><br>I've seen things you people wouldn't believe. Attack ships on fire off the shoulder of Orion. I watched C-beams glitter in the dark near the Tannhäuser Gate. All those moments will be lost in time like tears in rain. Time to die.</span></p>
		</button>
	</section>
	<section class="content catVids row">
		<h2>Videos in Sports Category</h2>
		<button class="video" onclick="location.href='#'" type="button">
			<img class="col" id="firstvid" src="http://placeimg.com/300/300/animal" alt="vid">
			<p><span>Video Title</span>&nbsp;&nbsp;&nbsp;&nbsp;Author<br><br>We've entered the Alderaan system. Governor Tarkin, I should have expected to find you holding Vader's leash. I recognized your foul stench when I was brought on board. Charming to the last. You don't know how hard I found it signing the order to terminate your life!</p>
		</button>
		<button class="video" onclick="location.href='#'" type="button">
			<img class="col" id="firstvid" src="http://placeimg.com/300/300/animal" alt="vid">
			<p><span>Video Title</span>&nbsp;&nbsp;&nbsp;&nbsp;Author<br><br>I've seen things you people wouldn't believe. Attack ships on fire off the shoulder of Orion. I watched C-beams glitter in the dark near the Tannhäuser Gate. All those moments will be lost in time like tears in rain. Time to die.</p>
		</button>
	</section>
	<section class="content row">
		<button class="video newFirst" id="firstbutton" onclick="location.href='#'" type="button">
			<img class="col" id="firstvid" src="http://placeimg.com/300/300/building" alt="vid">
			<p><span>Video Title</span>&nbsp;&nbsp;&nbsp;&nbsp;Author<span class="desc"><br><br>I've seen things you people wouldn't believe. Attack ships on fire off the shoulder of Orion. I watched C-beams glitter in the dark near the Tannhäuser Gate. All those moments will be lost in time like tears in rain. Time to die.</span></p>
		</button>
		<button class="video newFirst" onclick="location.href='#'" type="button">
			<img class="col" id="firstvid" src="http://placeimg.com/300/300/tech" alt="vid">
			<p><span>Video Title</span>&nbsp;&nbsp;&nbsp;&nbsp;Author<span class="desc"><br><br>I've seen things you people wouldn't believe. Attack ships on fire off the shoulder of Orion. I watched C-beams glitter in the dark near the Tannhäuser Gate. All those moments will be lost in time like tears in rain. Time to die.</span></p>
		</button>
		<button class="video newFirst" onclick="location.href='#'" type="button">
			<img class="col" id="firstvid" src="http://placeimg.com/400/480/nature" alt="vid">
			<p><span>Video Title</span>&nbsp;&nbsp;&nbsp;&nbsp;Author<span class="desc"><br><br>I've seen things you people wouldn't believe. Attack ships on fire off the shoulder of Orion. I watched C-beams glitter in the dark near the Tannhäuser Gate. All those moments will be lost in time like tears in rain. Time to die.</span></p>
		</button>
	</section>
	<section class="content row">
		<button class="video newFirst" id="firstbutton" onclick="location.href='#'" type="button">
			<img class="col" id="firstvid" src="http://placeimg.com/300/300/nature/sepia" alt="vid">
			<p><span>Video Title</span>&nbsp;&nbsp;&nbsp;&nbsp;Author<span class="desc"><br><br>I've seen things you people wouldn't believe. Attack ships on fire off the shoulder of Orion. I watched C-beams glitter in the dark near the Tannhäuser Gate. All those moments will be lost in time like tears in rain. Time to die.</span></p>
		</button>
		<button class="video newFirst" onclick="location.href='#'" type="button">
			<img class="col" id="firstvid" src="http://placeimg.com/600/600/nature" alt="vid">
			<p><span>Video Title</span>&nbsp;&nbsp;&nbsp;&nbsp;Author<span class="desc"><br><br>I've seen things you people wouldn't believe. Attack ships on fire off the shoulder of Orion. I watched C-beams glitter in the dark near the Tannhäuser Gate. All those moments will be lost in time like tears in rain. Time to die.</span></p>
		</button>
		<button class="video newFirst" onclick="location.href='#'" type="button">
			<img class="col" id="firstvid" src="http://placeimg.com/1000/300/nature" alt="vid">
			<p><span>Video Title</span>&nbsp;&nbsp;&nbsp;&nbsp;Author<span class="desc"><br><br>I've seen things you people wouldn't believe. Attack ships on fire off the shoulder of Orion. I watched C-beams glitter in the dark near the Tannhäuser Gate. All those moments will be lost in time like tears in rain. Time to die.</span></p>
		</button>
	</section>
	<section class="content catVids row">
		<h2>Videos in Sports Category</h2>
		<button class="video newFirst" onclick="location.href='#'" type="button">
			<img class="col" id="firstvid" src="http://placeimg.com/300/300/animal" alt="vid">
			<p><span>Video Title</span>&nbsp;&nbsp;&nbsp;&nbsp;Author<br><br>We've entered the Alderaan system. Governor Tarkin, I should have expected to find you holding Vader's leash. I recognized your foul stench when I was brought on board. Charming to the last. You don't know how hard I found it signing the order to terminate your life!</p>
		</button>
		<button class="video newFirst" onclick="location.href='#'" type="button">
			<img class="col" id="firstvid" src="http://placeimg.com/300/300/animal" alt="vid">
			<p><span>Video Title</span>&nbsp;&nbsp;&nbsp;&nbsp;Author<br><br>I've seen things you people wouldn't believe. Attack ships on fire off the shoulder of Orion. I watched C-beams glitter in the darkness at Tannhäuser Gate. All those moments will be lost in time like tears in rain. Time to die.</p>
		</button>
	</section>
	<section class="content row">
		<button class="video newFirst" id="firstbutton" onclick="location.href='#'" type="button">
			<img class="col" id="firstvid" src="http://placeimg.com/300/300/building" alt="vid">
			<p><span>Video Title</span>&nbsp;&nbsp;&nbsp;&nbsp;Author<span class="desc"><br><br>I've seen things you people wouldn't believe. Attack ships on fire off the shoulder of Orion. I watched C-beams glitter in the dark near the Tannhäuser Gate. All those moments will be lost in time like tears in rain. Time to die.</span></p>
		</button>
		<button class="video newFirst" onclick="location.href='#'" type="button">
			<img class="col" id="firstvid" src="http://placeimg.com/300/300/tech" alt="vid">
			<p><span>Video Title</span>&nbsp;&nbsp;&nbsp;&nbsp;Author<span class="desc"><br><br>I've seen things you people wouldn't believe. Attack ships on fire off the shoulder of Orion. I watched C-beams glitter in the dark near the Tannhäuser Gate. All those moments will be lost in time like tears in rain. Time to die.</span></p>
		</button>
		<button class="video newFirst" onclick="location.href='#'" type="button">
			<img class="col" id="firstvid" src="http://placeimg.com/400/480/nature" alt="vid">
			<p><span>Video Title</span>&nbsp;&nbsp;&nbsp;&nbsp;Author<span class="desc"><br><br>I've seen things you people wouldn't believe. Attack ships on fire off the shoulder of Orion. I watched C-beams glitter in the dark near the Tannhäuser Gate. All those moments will be lost in time like tears in rain. Time to die.</span></p>
		</button>
	</section>
	<section class="content row">
		<button class="video newFirst" id="firstbutton" onclick="location.href='#'" type="button">
			<img class="col" id="firstvid" src="http://placeimg.com/300/300/nature/sepia" alt="vid">
			<p><span>Video Title</span>&nbsp;&nbsp;&nbsp;&nbsp;Author<span class="desc"><br><br>I've seen things you people wouldn't believe. Attack ships on fire off the shoulder of Orion. I watched C-beams glitter in the dark near the Tannhäuser Gate. All those moments will be lost in time like tears in rain. Time to die.</span></p>
		</button>
		<button class="video newFirst" onclick="location.href='#'" type="button">
			<img class="col" id="firstvid" src="http://placeimg.com/600/600/nature" alt="vid">
			<p><span>Video Title</span>&nbsp;&nbsp;&nbsp;&nbsp;Author<span class="desc"><br><br>I've seen things you people wouldn't believe. Attack ships on fire off the shoulder of Orion. I watched C-beams glitter in the dark near the Tannhäuser Gate. All those moments will be lost in time like tears in rain. Time to die.</span></p>
		</button>
		<button class="video newFirst" onclick="location.href='#'" type="button">
			<img class="col" id="firstvid" src="http://placeimg.com/1000/300/nature" alt="vid">
			<p><span>Video Title</span>&nbsp;&nbsp;&nbsp;&nbsp;Author<span class="desc"><br><br>I've seen things you people wouldn't believe. Attack ships on fire off the shoulder of Orion. I watched C-beams glitter in the dark near the Tannhäuser Gate. All those moments will be lost in time like tears in rain. Time to die.</span></p>
		</button>
	</section>
	
	<footer class="content foot">
		<p>Copyright 14 June 2018 - Harley Halley</p>
	</footer>
</body>

</html>