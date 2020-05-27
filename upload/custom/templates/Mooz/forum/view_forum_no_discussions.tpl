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
                <div class="card-header d-flex">
                    <span class="card-title p-1">
                        {$FORUM_TITLE}
                    </span>
					{if $NEW_TOPIC_BUTTON}
						<span class="ml-auto d-table">
							<a href="{$NEW_TOPIC_BUTTON}" class="btn btn-primary">{$NEW_TOPIC}</a>
						</span>
					{/if}
                </div>
                <div class="card-body">
					{if !empty($SUBFORUMS)}

                    <table>
                        <thead>
                            <tr>
                                <th scope="col">{$SUBFORUM_LANGUAGE}</th>
                                <th scope="col">{$TOPICS}</th>
                            </tr>
                        </thead>
                        <tbody>
                            {foreach from=$SUBFORUMS item=subforum}
                                <tr>
                                    <td data-label="{$SUBFORUM_LANGUAGE}">
										<a href="{$subforum.link}" data-toggle="tooltip" title=""><b>{$subforum.title}</b></a>
									</td>
									{if !$subforum.redirect}
                                    <td data-label="{$TOPICS}">
										{$subforum.topics}
                                    </td>
									{else}
										<td></td>
									{/if}
                                </tr>
                            {/foreach}
                        </tbody>
					</table>
				  {/if}
				  
					{$NO_TOPICS_FULL}
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