{include file='header.tpl'}
{include file='navbar.tpl'}
<div class="container">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
			{foreach from=$BREADCRUMBS item=breadcrumb}
			<li class="breadcrumb-item{if isset($breadcrumb.active)} active{/if}">{if !isset($breadcrumb.active)}<a href="{$breadcrumb.link}">{/if}{$breadcrumb.forum_title}{if !isset($breadcrumb.active)}</a>{/if}</li>
			{/foreach}
            <span class="ml-auto">
                <a class="btn btn-outline-secondary" href="{$SITE_HOME}forum/search/"><i class="fa fa-search"></i></a>
            </span>
		  </ol>
    </nav>
    
    
    <div class="row">
        <div class="col">
            <div class="card card-news">
                <div class="card-header">
                    <span class="card-title">
                        <b class="d-inline">{$FORUM_TITLE}</b>
                        {if $NEW_TOPIC_BUTTON}
                            <span class="float-right">
                                <a href="{$NEW_TOPIC_BUTTON}">{$NEW_TOPIC}</a>
                            </span>
                        {/if}
                    </span>
                </div>
                <div class="card-body">
                        {if !empty($SUBFORUMS)}
                            <table>
                                <thead>
                                <tr>
                                    <th scope="col">{$SUBFORUM_LANGUAGE}</th>
                                    <th scope="col">{$TOPIC}</th>
                                </tr>
                                </thead>
                                <tbody>
                                    {foreach from=$SUBFORUMS item=subforum}
                                    <tr>
                                        <td data-label="Account">{$subforum.icon} <a href="{$subforum.link}">{$subforum.title}</a></td>
                                        <td data-label="Due Date">{$subforum.topics}</td>
                                    </tr>
                                {/foreach}
                                </tbody>
                            </table>
		                  {/if}
                    <div class="table-responsive">
                    <table>
                        <thead>
                            <tr>
                                <th scope="col">{$TOPIC}</th>
                                <th scope="col">{$STATS}</th>
                                <th scope="col">{$LAST_REPLY}</th>
                            </tr>
                        </thead>
                        <tbody>
                            {foreach from=$STICKY_DISCUSSIONS item=sticky}
                                <tr>
                                    <td data-label="{$TOPIC}">
                                        <i class="fas fa-thumbtack"></i> &ThickSpace;
                                        {$sticky.label} &ThickSpace; <a href="{$sticky.link}">{$sticky.topic_title}</a>
                                    </td>
                                    <td data-label="{$STATS}">
                                        <b>{$sticky.views}</b> <small> {$VIEWS|capitalize}</small> <br>
                                        <b>{$sticky.posts}</b> <small> {$POSTS|capitalize}</small> <br>
                                    </td>
                                    <td data-label="{$LAST_REPLY}">
                                        <a href="{$sticky.last_reply_link}">
                                            <img class="img-centre rounded-circle" style="width:25pt;" src="{$sticky.last_reply_avatar}" alt="{$sticky.last_reply_username}" />
                                        </a>
                                        <a style="{$sticky.last_reply_style}" href="{$sticky.last_reply_link}" data-toggle="tooltip" data-html="true" title="{$sticky.last_reply} &bull; {$sticky.last_reply_rough}">
                                            {$sticky.last_reply_username}
                                        </a>

                                    </td>
                                </tr>
                            {/foreach}
                            <hr>
                            {foreach from=$LATEST_DISCUSSIONS item=discussion}
                                <tr>
                                    <td data-label="{$TOPIC}">
                                        {if $discussion.locked == 1}
                                            <i class="fa fa-lock"></i> 
                                        {/if}
                                        <a href="{$discussion.link}">{$discussion.topic_title}</a>
                                    </td>
                                    <td data-label="{$STATS}">
                                        
                                        <b>{$discussion.views}</b> <small> {$VIEWS|capitalize}</small> <br>
                                        <b>{$discussion.posts}</b> <small> {$POSTS|capitalize}</small> <br>
                                    </td>
                                    <td data-label="{$LAST_REPLY}">
                                        <a href="{$discussion.last_reply_link}">
                                            <img class="img-centre rounded-circle" style="width:25pt;" src="{$discussion.last_reply_avatar}" alt="{$discussion.last_reply_username}" />
                                        </a>
                                        <a style="{$discussion.last_reply_style}" href="{$discussion.last_reply_link}" data-toggle="tooltip" data-html="true" title="{$discussion.last_reply} &bull; {$discussion.last_reply_rough}">
                                            {$discussion.last_reply_username}
                                        </a>

                                    </td>
                                </tr>
                            {/foreach}
                        </tbody>
                    </table>
                    <span class="centro">
                        {$PAGINATION}
                    </span>
                </div>
                </div>
            </div>
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