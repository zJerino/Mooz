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
                        {$FORUM_TITLE}
                    </span>
                    {if $NEW_TOPIC_BUTTON}
                        <span class="ml-auto">
                            <a class="btn btn-outline btn-outline-primary" href="{$NEW_TOPIC_BUTTON}">{$NEW_TOPIC}</a>
                        </span>
                    {/if}
                </div>
                <div class="card-body">
                    <div class="container">
                        {if !empty($SUBFORUMS)}
                              <div class="table-sm table-responsive">
                                <table class="table table-hover">
                                  <tr>
                                    <th colspan="3">{$SUBFORUM_LANGUAGE}</th>
                                  </tr>
                                  {foreach from=$SUBFORUMS item=subforum}
                                  <tr>
                                    <td>{$subforum.icon} <a href="{$subforum.link}">{$subforum.title}</a></td>
                                    <td><strong>{$subforum.topics}</strong> {$TOPICS}</td>
                                  </tr>
                                  {/foreach}
                                </table>
                              </div>
		                  {/if}
                    </div>
                    <div class="table-responsive">
                    <table class="table table-sm table-hover">
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
                                    <td>Otto</td>
                                    <td>@mdo</td>
                                    <td>@mdo</td>
                                </tr>
                            {/foreach}
                            {foreach from=$LATEST_DISCUSSIONS item=discussion}
                                <tr>
                                    <td>
                                        {if $discussion.locked == 1}<i class="fa fa-lock"></i> {/if}{$discussion.label}
                                        <b>
                                            <a style="color: inherit" href="{$discussion.link}">{$discussion.topic_title}</a>
                                        </b>
                                    </td>
                                    <td>
                                        <strong>{$discussion.posts}</strong> {$POSTS} <br />
                                        <strong>{$discussion.views}</strong> {$VIEWS}
                                    </td>
                                    <td>
                                        <div class="col">
                                                    <li class="media">
                                                        <img class="mr-3 rounded-circle" src="{$discussion.last_reply_avatar}" style="width: 25px">
                                                        <div class="media-body">
                                                            <span class="mt-0 mb-1">
                                                                <a style="{$discussion.last_reply_style}" href="{$discussion.link}">{$discussion.topic_title}</a>
                                                                <p>
                                                                    
                                                                <a data-toggle="tooltip" class="d-none d-sm-none d-md-block" title="{$subforum->last_post->post_date}">{$discussion.last_reply_rough}</a>
                                                                </p>
                                                            </span>
                                                        </div>
                                                    </li>
                                            </div>
                                    </td>
                                </tr>
                            {/foreach}
                        </tbody>
                    </table>
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

{$PAGINATION}


{include file='footer.tpl'}