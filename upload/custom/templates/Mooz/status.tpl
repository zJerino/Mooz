{include file='header.tpl'}
{include file='navbar.tpl'}

<div class="container" id="contenido">
    {if count($SERVERS)}
        <div class="card card-news">
            <div class="card-body">
                <div class="container" id="servers">
                    {if isset($CLICK_TO_COPY_TOOLTIP)}
                        <div class="alert alert-info" style="text-align:center">
                            <span onclick="copyToClipboard('#ip')" data-toggle="tooltip" title="{$CLICK_TO_COPY_TOOLTIP}">{$CONNECT_WITH}</span>
                        </div>
                    {/if}
                    <br />
                    {foreach from=$SERVERS item=server}
                        <div class="card card-news server" id="server{$server->id}" data-id="{$server->id}" data-bungee="{$server->bungee}" data-players="{$server->player_list}">
                            <div class="card-body">
                                <div class="card-header">
                                    <span class="card-title">
                                        {$server->name|escape:'html'}
                                    </span>
                                </div>
                                <span class="float-left">
                                    {if $server->show_ip}
                                    {$IP}:
                                        <span id="copy{$server->id|escape}" onclick="copy('#copy{$server->id|escape}')">
                                            {$server->query_ip|escape:'html'}{if $server->port && $server->port != 25565}:{$server->port|escape:'html'}{/if}
                                        </span>
                                    {/if}
                                </span>
                                <span class="float-right server-status-icon text-info" id="estadoserver{$server->id}">
                                    <span id="server-status">
                                        <i class="notched circle loading icon"></i>
                                    </span>
                                    <i id="{$server->id}" data-id="{$server->id}" class="material-icons">fiber_manual_record</i>
                                </span>
                            </div>
                        </div>
                    {/foreach}
                </div>
            </div>
        </div>
    {else}
        <div class="card card-news">
            <div class="card-body">
                <div class="container">
                    <div class="alert alert-danger">
                        <div class="container">
                            <li style="list-style: none">
                                <i class="material-icons">cancel</i> {$NO_SERVERS}
                            </li>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    {/if}
</div>
{include file='footer.tpl'}