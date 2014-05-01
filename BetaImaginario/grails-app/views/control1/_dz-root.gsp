<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/jquery-ui.min.js"></script>
<script src="http://cdn-files.deezer.com/js/min/dz.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
<meta name="layout" content="main"/>


<title>Player</title>
</head>
<body>


<div id="player" style="width:100%;" align="center">

 <g:javascript>
$(document).ready(function(){
$("#controlers input").attr('disabled', true);
$("#slider_seek").click(function(evt,arg){
var left = evt.offsetX;
DZ.player.seek((evt.offsetX/$(this).width()) * 100);
});
});
function event_listener_append() {
var pre = document.getElementById('event_listener');
var line = [];
for (var i = 0; i < arguments.length; i++) {
line.push(arguments[i]);
}
pre.innerHTML += line.join(' ') + "\n";
}
function onPlayerLoaded() {
$("#controlers input").attr('disabled', false);
event_listener_append('player_loaded');
DZ.Event.subscribe('current_track', function(arg){
event_listener_append('current_track', arg.index, arg.track.title, arg.track.album.title);
});
DZ.Event.subscribe('player_position', function(arg){
event_listener_append('position', arg[0], arg[1]);
$("#slider_seek").find('.bar').css('width', (100*arg[0]/arg[1]) + '%');
});
}
DZ.init({
appId : '8',
channelUrl : 'http://developers.deezer.com/examples/channel.php',
player : {
container : 'player',
cover : true,
playlist : true,
width : 650,
height : 300,
onload : onPlayerLoaded
}
});
	</g:javascript>
</div>
<br/>
  <div id="controllers">
<input type="button" onclick="DZ.player.playRadio(203); return false;" value="Play Radio"/>
<input type="button" onclick="DZ.player.playSmartRadio(13); return false;" value="Play Smart Radio"/>

<br/>
<input type="button" onclick="DZ.player.play(); return false;" value="play"/>
<input type="button" onclick="DZ.player.pause(); return false;" value="pause"/>
<input type="button" onclick="DZ.player.prev(); return false;" value="prev"/>
<input type="button" onclick="DZ.player.next(); return false;" value="next"/>
<br/>
<input type="button" onclick="DZ.player.setVolume(20); return false;" value="set Volume 20"/>
<input type="button" onclick="DZ.player.setVolume(80); return false;" value="set Volume 80"/>

<br/><br/><br/>
  
  </div>
  
  <div id="slider_seek" class="progressbarplay" style="">
  <div class="bar" style="width: 0%;"></div>
  </div>
  
  <div id="dz-root">   

  <input type="button" onclick= "DZ.player.playAlbum(6125830);" value="Play"/>
  <g:javascript>
$(document).ready(function(){
$("#controlers input").attr('disabled', true);
$("#slider_seek").click(function(evt,arg){
var left = evt.offsetX;
DZ.player.seek((evt.offsetX/$(this).width()) * 100);
});
});
function event_listener_append() {
var pre = document.getElementById('event_listener');
var line = [];
for (var i = 0; i < arguments.length; i++) {
line.push(arguments[i]);
}
pre.innerHTML += line.join(' ') + "\n";
}
function onPlayerLoaded() {
$("#controlers input").attr('disabled', false);
event_listener_append('player_loaded');
DZ.Event.subscribe('current_track', function(arg){
event_listener_append('current_track', arg.index, arg.track.title, arg.track.album.title);
});
DZ.Event.subscribe('player_position', function(arg){
event_listener_append('position', arg[0], arg[1]);
$("#slider_seek").find('.bar').css('width', (100*arg[0]/arg[1]) + '%');
});
}
DZ.init({
appId : '8',
channelUrl : 'http://developers.deezer.com/examples/channel.php',
player : {
container : 'player',
cover : true,
playlist : true,
width : 650,
height : 300,
onload : onPlayerLoaded
}
});
	</g:javascript>
  </div>
 
</body>
</html>