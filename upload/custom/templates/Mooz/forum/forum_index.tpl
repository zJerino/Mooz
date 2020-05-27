{include file='header.tpl'}
{include file='navbar.tpl'}

<div class="container">
<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item active" href="{$BREADCRUMB_URL}" aria-current="page">{$BREADCRUMB_TEXT}</li>
        <a class="ml-auto" href="{$SEARCH_URL}"><i class="fa fa-search"></i></a>
    </ol>
</nav>
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
                        {foreach from=$forum.subforums item=subforum}
                        <div class="card-body-2 mt-1">
                            <ul class="list-group list-group-flush">
                                    {if !isset($subforum->redirect_confirm)}
                                        <li class="list-group-item forocard">
                                            <div class="row">
                                                <div class="col-1 _asduasdi" id="quitadordepm">
                                                    {if empty($subforum->icon)}
                                                        <i class="fa fa-comments fa-2x"></i>
                                                    {else}
                                                        {$subforum->icon}
                                                    {/if}
                                                </div>
                                                <div class="col _asduasdi" style="text-align: start;">
                                                    <a class="normal _asduasdi" href="{$subforum->link}"><b>{$subforum->forum_title}</b></a>
                                                </div>
                                                <div class="col row _asduasdi" id="quitadordepm">
                                                    <p>
                                                        <div class="col">
                                                            <small> {$TOPICS|capitalize}</small> <br> <b>{$subforum->topics}</b>
                                                        </div>
                                                        <div class="col">
                                                            <small> {$POSTS|capitalize}</small> <br> <b>{$subforum->posts}</b>
                                                        </div>
                                                    </p>
                                                </div>
                                                <div class="col-4 d-none d-sm-none d-md-block ml-auto">
                                                    {if isset($subforum->last_post)}
                                                        <div class="media">
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
                                                        <p class="quitadordepm">{$NO_TOPICS}</p>
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
                            </ul>
                        </div>
                        {/foreach}
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