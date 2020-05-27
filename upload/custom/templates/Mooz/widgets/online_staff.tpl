<div class="card card-news" id="widget-staff">
    <div class="card-body" style="padding-top: 1px;">
        <div class="card-header">
            <span class="card-title">{$ONLINE_STAFF}</span>
        </div>
        <ul class="list-unstyled">
        {if isset($ONLINE_STAFF_LIST)}
            {foreach from=$ONLINE_STAFF_LIST name=online_staff_arr item=user}
            <li class="media"> 
                <div class="ms-avatar">      
                    <img data-src="{$user.avatar}" data-srcset="{$user.avatar}" alt="{$user.username}" class="avatar-VxgULZ lazy" aria-hidden="true" alt="Loading">
                    <span class="ms-status ms-success"></span>
                </div>
                <div class="media-body" style="margin-top: 7px;">
                    <span class="mt-0 mb-1" id="block-img">
                        {if $user.group}
                            {$user.group}
                        {else}
                            {$user.title}
                        {/if}
                        <a class="rounded-circle" href="{$user.profile}" data-poload="{$USER_INFO_URL}{$user.id}" data-html="true" data-placement="top" style="{$user.style|replace:';':''}!important;">{$user.nickname}</a>
                    </span>
                </div>
             </li>
        {/foreach}
      {else}
        {$NO_STAFF_ONLINE}
      {/if}
        </ul>
    </div>
    <div class="card-footer">
        <p class="text-muted">
            {$TOTAL_ONLINE_STAFF}
        </p>
    </div>
</div>