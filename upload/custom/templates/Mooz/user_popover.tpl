<div class="ms_col ms_col--2-of-5" style="    margin: 0px 10px;">
    <div class="ms-user centro">
        <div class="ms-avatar ms-large" style="    position: initial;margin: 0;">
            <img class="ms-avatar-img" src="{$AVATAR}" alt="{$USERNAME}">
            <span class="ms-status ms-success"></span>
        </div>
        <div>
            <p>
                <b>{$NICKNAME}</b><br/>
                <i> {if count($GROUPS)}{foreach from=$GROUPS item=group}{$group}{/foreach}{/if}</i><br/>
            </p>
        <div class="row">
            <a class="col-6 btn btn-light" href="{$PROFILE}">{$V_Profile}</a>
        </div> 
        </div> 
    </div>
</div>