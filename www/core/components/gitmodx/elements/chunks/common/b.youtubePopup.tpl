<div id="video-container">
    <a href="javascript: void(0);" class="video_close active_mod"></a>
    <div class="fullscreen-black"></div>
    <div id="video-iframe"></div>
</div>

<script>
    //Youtube API Code

    var tag = document.createElement('script');

    tag.src = "https://www.youtube.com/iframe_api";
    var firstScriptTag = document.getElementsByTagName('script')[0];
    firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);


    // 3. This function creates an <iframe> (and YouTube player)
    //    after the API code downloads.
    var player;

    function onYouTubeIframeAPIReady() {
        $(function () {
            $('a[data-toggle="video"]').click(function () {
                var targetContainer = $(this).attr('href');
                var videoId = $(this).attr('data-video');
                player = new YT.Player('video-iframe', {
                    playerVars: { 'autohide': 1},
                    videoId: videoId,
                    events: {
                        'onReady': function (event) {
                            player.playVideo();
                        }
                    }
                });
                $(targetContainer).fadeIn(500);
                return false;
            });

            $('#video-container .video_close').click(function () {
                $(this).parent('div').fadeOut(500, function () {
                    player.destroy();
                });
                return false;
            });
        });
    }
</script>
