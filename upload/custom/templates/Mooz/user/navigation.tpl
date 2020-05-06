<div class="card card-news">
    <div class="card-body">
        <div class="container nav flex-column nav-pills">
            {foreach from=$CC_NAV_LINKS key=name item=item}
                <a class="nav-link" id="v-pills-settings-tab{if isset($item.active)} active{/if}" target="{$item.target}" href="{$item.link}">{$item.title}</a>
            {/foreach}
        </div>
    </div>
</div>