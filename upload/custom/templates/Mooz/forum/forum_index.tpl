{include file='header.tpl'}
{include file='navbar.tpl'}

<div class="container">
<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item active" href="{$BREADCRUMB_URL}" aria-current="page">{$BREADCRUMB_TEXT}</li>
        <span class="ml-auto"><i class="fa fa-search"></i></span>
    </ol>
</nav>

<h2>
    {$TITLE}
</h2>
{if isset($SPAM_INFO)}
	<div class="alert alert-info">
		<i class="fa fa-exclamation-circle"></i>{$SPAM_INFO}
	</div>
{/if}
    
    <div class="row">
        <div class="col">
            {foreach from=$FORUMS key=category item=forum}
                {if !empty($forum.subforums)}
                    <div class="card card-news">
                        <div class="card-header">
                            <span class="card-title">
                                <i class="fa fa-folder-open"></i> {$forum.title}
                            </span>
                        </div>
                        <div class="card-body">
                            <ul class="list-group list-group-flush">
                                {foreach from=$forum.subforums item=subforum}
                                    {if !isset($subforum->redirect_confirm)}
                                        <li class="list-group-item encima">
                                            <div class="row">
                                                <div class="col-1">
                                                    {if empty($subforum->icon)}
                                                        <i class="fa fa-comments fa-2x"></i>
                                                    {else}
                                                        {$subforum->icon}
                                                    {/if}
                                                </div>
                                                <div class="col-4">
                                                    <b>
                                                        <a class="normal" href="{$subforum->link}">{$subforum->forum_title}</a>
                                                    </b>
                                                </div>
                                                <div class="col">
                                                    <div class="estadisticasxxdddd">
                                                        <b>{$subforum->topics}</b>
                                                        <small>{$TOPICS|capitalize}</small>
                                                        <br />
                                                        <b>{$subforum->posts}</b>
                                                        <small>{$POSTS|capitalize}</small>
                                                    </div>
                                                </div>
                                                <div class="col-4 d-none d-sm-none d-md-block">
                                                    {if isset($subforum->last_post)}
                                                        <div class="media">
                                                            <img class="mr-3 rounded-circle" src="{$subforum->last_post->avatar}" style="width: 25px">
                                                            <div class="media-body">
                                                                <span class="mt-0 mb-1">
                                                                    <a href="{$subforum->last_post->link}">{$subforum->last_post->title}</a>
                                                                    <br />
                                                                    <span>
                                                                        <a href="{$subforum->last_post->profile}">{$subforum->last_post->username}</a>
                                                                        <span data-toggle="tooltip" title="{$subforum->last_post->post_date}"><small>{$subforum->last_post->date_friendly}</small></span>
                                                                    </span>   
                                                                </span>
                                                            </div>
                                                        </div>
                                                    {else}
                                                        <h4 style="padding: 8px 0">{$NO_TOPICS}</h4>
                                                {/if}
                                                </div>
                                                {*<div class="col d-none d-sm-none d-md-block">
                                                {if isset($subforum->last_post)}
                                                    <li class="media">
                                                        <img class="mr-3 rounded-circle" src="{$subforum->last_post->avatar}" style="width: 25px">
                                                        <div class="media-body">
                                                            <span class="mt-0 mb-1">
                                                                <a href="{$post.last_reply_link}">{$subforum->last_post->title}</a>
                                                                <p>
                                                                    <a style="{$subforum->last_post->user_style}" href="{$subforum->last_post->profile}">{$subforum->last_post->username}</a> &bull; <span data-toggle="tooltip" title="{$subforum->last_post->post_date}">{$subforum->last_post->date_friendly}</span>
                                                                </p>
                                                            </span>
                                                        </div>
                                                    </li>
                                                {else}
                                                    <h4 style="padding: 8px 0">{$NO_TOPICS}</h4>
                                                {/if}
                                            </div>*}
                                            </div>
                                        </li>
                                    {/if}
                                {/foreach}
                            </ul>
                            {*<table class="table table-hover">
                                {foreach from=$forum.subforums item=subforum}
                                    {if !isset($subforum->redirect_confirm)}
                                        <div class="container">
                                            <a>
                                            
                                        <div class="row encima">
                                            <div class="col-1">
                                                {if empty($subforum->icon)}
                                                    <i class="fa fa-comments fa-2x"></i>
                                                {else}
                                                    {$subforum->icon}
                                                {/if}
                                            </div>
                                            <div class="col-4">
                                                <b>
                                                    <a style="color: inherit" href="{$subforum->link}">{$subforum->forum_title}</a>
                                                </b>
                                            </div>
                                            <div class="col d-none d-sm-none d-md-block">
                                                {if isset($subforum->last_post)}
                                                    <li class="media">
                                                        <img class="mr-3 rounded-circle" src="{$subforum->last_post->avatar}" style="width: 25px">
                                                        <div class="media-body">
                                                            <span class="mt-0 mb-1">
                                                                <a href="{$post.last_reply_link}">{$subforum->last_post->title}</a>
                                                                <p>
                                                                    <a style="{$subforum->last_post->user_style}" href="{$subforum->last_post->profile}">{$subforum->last_post->username}</a> &bull; <span data-toggle="tooltip" title="{$subforum->last_post->post_date}">{$subforum->last_post->date_friendly}</span>
                                                                </p>
                                                            </span>
                                                        </div>
                                                    </li>
                                                {else}
                                                    <h4 style="padding: 8px 0">{$NO_TOPICS}</h4>
                                                {/if}
                                            </div>
                                        </div>
                                            </a>
                                        </div>
                                    {else}
                                <div class="container">
                                    
                                <div class="row encima">
                                    <div class="col-1">
                                        {if empty($subforum->icon)}
                                            <i class="fa fa-comments-alt fa-2x"></i>
                                        {else}
                                            {$subforum->icon}
                                        {/if}
                                    </div>
                                    <div class="col">
                                        <b>
                                            <a style="color: inherit" href="{$subforum->redirect_url}">{$subforum->forum_title}</a>
                                        </b>
                                    </div>
                                </div>
                                </div>
                                {/if}
                            {/foreach}
                            </table>*}
                        </div>
                    </div>
                {/if}
            {/foreach}
        </div>
        <div class="col-md-4 col-lg-3">
            {if count($WIDGETS)}
                {foreach from=$WIDGETS item=widget}
                    {$widget}
                {/foreach}
            {/if}
        </div>
    </div>
</div>

{include file='footer.tpl'}