{if isset($NO_POSTS)}
    <div class="alert alert-danger">
        {$NO_POSTS}
    </div>
{else}
    {foreach from=$PF_LATEST_POSTS item=post}
        <div class="container">
            <div class="card card-news">
                <div class="card-header">
                    <span class="card-title" data-toggle="tooltip" title="{$post.date_full}">
                        {$post.title}
                    </span>
                </div>
                <div class="card-body">
                    <div class="container">
                        {$post.content}
                    </div>
                </div>
                <div class="card-footer">
                    <a class="float-right btn btn-primary" href="{$post.link}" style="font-size: 10px;border-radius: 5px;color: white;font-weight: 600;">
                        <i class="fa fa-sign-in-alt"></i> {$READ_FULL_POST}
                    </a>
                </div>
            </div>
        </div>
    {/foreach}
{/if}
{*
*}