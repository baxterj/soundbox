
var data = [
    {
        name: 'Mom\'s spaghetti',
        videoId: 'SW-BU6keEUw',
        startSeconds: 7.3,
        endSeconds: 8.2
    },
    {
        name: 'Sweater spaghetti',
        videoId: 'SW-BU6keEUw',
        startSeconds: 19.9,
        endSeconds: 20.9
    }
]

// Reference to all loaded players
var players = [];


$(document).ready(function() {
    var holder = $('#player-list');
    for (var i = 0; i < data.length; i++) {
        var playerHtml = '<div class="player-container col-xs-3" id="player-container-' + i + '">'
            + '<button type="button" id="play-button-' + i + '" class="play-button btn btn-lg btn-block btn-primary">' + data[i].name + '</button>'
            + '<div id="yt-player-' + i + '"></div>'
            + '</div>';

        holder.append(playerHtml);
    }

    $('.play-button').on('click', function(e) {
        var buttonNum = getButtonNum($(this));
        players[buttonNum].seekTo(data[buttonNum].startSeconds);
        players[buttonNum].playVideo();
    })
})

// Get the number of a button with id of form "something-button-#"
function getButtonNum(button) {
    return button.attr('id').replace(/.*-button-/, '');
}
    
function getPlayerNum(player) {
    return player.getIframe().id.replace('yt-player-', '');
}

function onPlayerReady(e) {
    var player = e.target;
    var playerNum = getPlayerNum(player);

    player.loadVideoById({
        videoId: data[playerNum].videoId,
        startSeconds: data[playerNum].startSeconds,
        endSeconds: data[playerNum].endSeconds,
        suggestedQuality: 'small'
    });
    player.pauseVideo();
}

/*
    -1 – unstarted
    0 – ended
    1 – playing
    2 – paused
    3 – buffering
    5 – video cued
*/
function onPlayerStateChange(e) {
    var player = e.target;
    var playerNum = getPlayerNum(player);
    var status = e.data;

    // Sound is ready to play
    if (status === 3) {

    // playback complete, scrub back to startSeconds
    } else if (status === 0) {
        player.pauseVideo();
        player.seekTo(data[playerNum].startSeconds);
    }
}

function onYouTubeIframeAPIReady() {

    for (var i = 0; i < data.length; i++) {
        players[i] = new YT.Player('yt-player-' + i, {
            height: '200',
            width: '200',
            events: {
                'onReady': onPlayerReady,
                'onStateChange': onPlayerStateChange
            }
        });
    }
}

