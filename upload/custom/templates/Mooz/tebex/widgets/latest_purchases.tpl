<div class="card card-news">
    <div class="card-body">
        <div class="card-header">
            <span class="card-title">
                {$LATEST_PURCHASES}
            </span>
        </div>
        {if count($PURCHASES)}
            {foreach from=$PURCHASES item=purchase name=purchases_array}
                <div class="row align-items-center">
                    <div class="col-md-3 p-0 pl-4">
                        <a {if $purchase.user_id}href="{$purchase.profile}"{/if} data-poload="{$USER_INFO_URL}{if $purchase.user_id > 0}{$purchase.user_id}{else}{$purchase.username}&uuid={$purchase.uuid}{/if}"><img class="img-centre rounded lazy" style="max-height:30px;max-width:30px;" data-src="{$purchase.avatar}" data-srcset="{$purchase.avatar}" alt="{$purchase.username}"/></a>
                    </div>
                    <div class="col-md-9">
                        <a style="{$purchase.style}" data-poload="{$USER_INFO_URL}{if $purchase.user_id > 0}{$purchase.user_id}{else}{$purchase.username}&uuid={$purchase.uuid}{/if}" data-html="true" data-placement="top">{$purchase.username}</a><br />
                        <span data-toggle="tooltip" data-trigger="hover" data-original-title="{$purchase.date_full}">{$purchase.date_friendly}</span>
                    </div>
                </div>
                {if not $smarty.foreach.purchases_array.last}<hr />{/if}
            {/foreach}
        {/if}
    </div>
</div>