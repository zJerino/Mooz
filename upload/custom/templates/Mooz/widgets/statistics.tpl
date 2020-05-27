<div class="card card-news" id="widget-stats">
    <div class="card-body" style="padding-top: 1px;">
        <div class="card-header">
            <span class="card-title">{$STATISTICS}</span>
        </div>
        <ul class="list-unstyled">
        {if isset($FORUM_STATISTICS)}
          <li>
            <span class="text">{$TOTAL_THREADS}</span>
            <div class="float-right"><b>{$TOTAL_THREADS_VALUE}</b></div>
          </li>
          <li>
            <span class="text">{$TOTAL_POSTS}</span>
            <div class="float-right"><b>{$TOTAL_POSTS_VALUE}</b></div>
          </li>
        {/if}
        <li>
          <span class="text">{$USERS_REGISTERED}</span>
          <div class="float-right"><b>{$USERS_REGISTERED_VALUE}</b></div>
        </li>
        <li>
          <span class="text">{$LATEST_MEMBER}</span>
          <div class="float-right">
            <a href="{$LATEST_MEMBER_VALUE.profile}" data-poload="{$USER_INFO_URL}{$LATEST_MEMBER_VALUE.id}" style="{$LATEST_MEMBER_VALUE.style}"><b>{$LATEST_MEMBER_VALUE.nickname}</b></a>
          </div>
        </li>
        </ul>
    </div>
</div>