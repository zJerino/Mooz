<div class="card card-news" id="widget-users">
    <div class="card-body" style="padding-top: 1px;">
        <div class="card-header">
            <span class="card-title">{$ONLINE_USERS}</span>
        </div>
        <ul class="list-unstyled">
        {if isset($ONLINE_USERS_LIST)}
        {foreach from=$ONLINE_USERS_LIST name=online_users_arr item=user}
            <li class="media">
                <img data-src="{$user.avatar}" data-srcset="{$user.avatar}" alt="{$user.username}" class="mr-3 lazy rounded-circle" aria-hidden="true" style="width: 20px">
                <div class="media-body">
                    <span class="mt-0 mb-1">
                        <a class="rounded-circle" href="{$user.profile}" data-poload="{$USER_INFO_URL}{$user.id}" style="{$user.style|replace:';':''}!important;">{$user.nickname}</a>
                    </span>
                </div>
             </li>
        {/foreach}
      {else}
        {$NO_USERS_ONLINE}
      {/if}
        </ul>
    </div>
    <div class="card-footer">
        <p class="text-muted">
            {$TOTAL_ONLINE_USERS}
        </p>
    </div>
</div>