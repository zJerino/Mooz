{include file='header.tpl'}
{include file='navbar.tpl'}

<div class="container">
    <div class="row">
      <div class="col-3">
        <div class="card card-news">
            <div class="card-header">
                <div class="card-title">{$LANG_Ranks}</div>
            </div>
            <div class="card-body">
                <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                    {if count($STAFF_GROUPS)}
                        {foreach from=$STAFF_GROUPS item=group}
                           {if count($group.members)}
                                <a class="nav-link rounded {if ($group.name.first)}active{/if}" id="Rango-{$group.name}-tab" data-toggle="pill" href="#Rango-{$group.name}" role="tab" aria-controls="v-pills-home" aria-selected="true">{$group.name}</a>
                            {/if}
                        {/foreach}
                    {/if}
                </div>
            </div>
        </div>
      </div>
        <div class="col-9">
            <div class="tab-content" id="v-pills-tabContent">
                {if count($STAFF_GROUPS)}
                    {foreach from=$STAFF_GROUPS item=group}
                        {if count($group.members)}
                            <div class="tab-pane fade show active" id="Rango-{$group.name}" role="tabpanel" aria-labelledby="Rango-{$group.name}-tab">
                                <div class="card card-news">
                                    <div class="card-header">
                                        <div class="card-title">
                                            {$group.name}
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <div class="row row-cols-3">
                                            {foreach from=$group.members item=member}
                                                <div class="col-md-3 mb-3">
                                                    <div class="text-center">
                                                    <img class="lazy" data-src="{$member.avatar}" data-srcset="{$member.avatar}" alt="{$member.username}" style="display: block; margin: 0 auto .5rem; width: 60px; height: 60px; border-radius: 50%;">
                                                        <a href="{$member.profile}" style="color: {$group.style};">{$member.username}</a>
                                                    </div>
                                                </div>
                                            {/foreach}
                                        </div>
                                    </div>
                                </div>
                            </div>
                        {/if}
                    {/foreach}
                {/if}
            </div>
      </div>
    </div>
</div>

{include file='footer.tpl'}