{include file='header.tpl'}
{include file='navbar.tpl'}

<div class="container">
    <div>
        <div class="col-12 mx-auto">
            <div class="card card-news">
                <div class="card-header">
                    <div class="card-title">
                        {$INFRACTIONS}
                    </div>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        {if isset($INFRACTIONS_LIST)}
                            <table class="table table-sm table-hover">
                                <thead>
                                    <tr>
                                        <th>{$ACTION}</th>
                                        <th>{$USERNAME}</th>
                                        <th>{$STAFF_MEMBER}</th>
                                        <th>{$REASON}</th>
                                        <th>{$ISSUED}</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    {foreach from=$INFRACTIONS_LIST item=infraction}
                                        <tr>
                                            <td>
                                                {if $infraction.action_id == 1 || $infraction.action_id == 2}
                                                    <span class="badge badge-danger">{$infraction.action}</span>
                                                {elseif $infraction.action_id == 3 || $infraction.action_id == 4}
                                                    <span class="badge badge-warning">{$infraction.action}</span>
                                                {elseif $infraction.action_id == 5}
                                                    <span class="badge badge-warning">{$infraction.action}</span>
                                                {elseif $infraction.action_id == 6}
                                                    <span class="badge badge-secondary">{$infraction.action}</span>
                                                {else}
                                                    <span class="ui label">{$infraction.action}</span>
                                                {/if}
                                                {if $infraction.action_id eq 1 OR $infraction.action_id eq 3}
                                                    {if $infraction.revoked == 1}
                                                        <span data-toggle="tooltip" title="{$infraction.expires_full}" class="badge badge-success">
                                                            {$infraction.revoked_full}
                                                        </span>
                                                    {else}
                                                        <span data-toggle="tooltip" title="{$infraction.expires_full}" class="badge badge-danger">
                                                            {$infraction.revoked_full}
                                                        </span>
                                                    {/if}
                                                {/if}
                                            </td>
                                            <td>
                                                <img style="max-height:30px; max-width:30px;" class="rounded" src="{$infraction.avatar}"> 
                                                <a style="{$infraction.username_style}">{$infraction.username}</a>
                                            </td>
                                            <td>
                                                <img style="max-height:30px; max-width:30px;" class="rounded" src="{$infraction.staff_member_avatar}"> <a style="{$infraction.staff_member_style}">{$infraction.staff_member}</a>
                                            </td>
                                            <td>
                                                {$infraction.reason}
                                            </td>
                                            <td>
                                                <span data-toggle="tooltip" title="{$infraction.issued_full}">{$infraction.issued}</span>
                                            </td>
                                        </tr>
                                    {/foreach}
                                </tbody>
                            </table>
                            <span class="centro">
                                {$PAGINATION}
                            </span>
                        {else}
			                 <div class="alert alert-info">{$NO_INFRACTIONS}</div>
                        {/if}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

{include file='footer.tpl'}