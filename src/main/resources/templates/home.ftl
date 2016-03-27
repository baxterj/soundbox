<#import "includes/main.ftl" as layout />

<@layout.main title="Templated title">
 	<div id="player-list" class="container">
	
    </div>

    <div id="add-sound-form" class="container">
        <div class="col-xs-12">
            <form>
                <div class="form-group">
                    <label for="name">Name</label>
                    <input type="text" class="form-control" id="name" placeholder="New sound">
                    <label for="videoId">Video Id</label>
                    <input type="text" class="form-control" id="videoId" placeholder="dQw4w9WgXcQ">
                    <p class="help-block">From url: https://www.youtube.com/watch?v=<strong>dQw4w9WgXcQ</strong></p>
                </div>

                <div class="form-group">
                    <label for="startSeconds">Start time (seconds)</label>
                    <input type="text" class="form-control" id="startSeconds" placeholder="0.0">
                    <label for="endSeconds">End time (seconds)</label>
                    <input type="text" class="form-control" id="endSeconds" placeholder="0.0">
                    <label for="volume">Volume (0-100)</label>
                    <input type="text" class="form-control" id="volume" placeholder="50">
                </div>

                <div class="form-group">
                    <input type="submit" class="btn btn-primary btn-lg" value="Save" />
                </div>
            </form>
        </div>

    </div>
</@layout.main>