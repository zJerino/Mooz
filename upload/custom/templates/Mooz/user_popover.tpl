<div class="ms_col ms_col--2-of-5" style="    margin: 0px 10px;">
    <div class="ms-user centro">
        <div class="ms-avatar ms-large" style="    position: initial;margin: 0;">
            <img class="ms-avatar-img" src="{$AVATAR}" alt="{$USERNAME}">
        </div>
        <span>
            <p>
                <b>{$NICKNAME}</b><br/>
                <i> {if count($GROUPS)}{foreach from=$GROUPS item=group}{$group}{/foreach}{/if}</i><br/>
            </p>
            <a class="mx-auto d-table btn btn-light" href="{$PROFILE}">{$V_Profile}</a>
        </span> 
    </div>
</div>