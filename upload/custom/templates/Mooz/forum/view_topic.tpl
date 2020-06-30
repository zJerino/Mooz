{include file='header.tpl'}
{include file='navbar.tpl'}
<div class="container">
    <div class="row">
        <div class="col">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    {foreach from=$BREADCRUMBS item=breadcrumb}
                    <li class="breadcrumb-item{if isset($breadcrumb.active)} active{/if}">{if !isset($breadcrumb.active)}<a href="{$breadcrumb.link}">{/if}{$breadcrumb.forum_title}{if !isset($breadcrumb.active)}</a>{/if}</li>
                    {/foreach}
                    {if isset($CAN_MODERATE)}
                        <span class="ml-auto">
                            <div class="btn btn-primary btn-sm dropdown-toggle" id="button-{$name}" data-variation="mini" data-toggle="popup2"><i class="fa fa-user"></i> {$MOD_ACTIONS}</div>
                            <div class="ui popup">
                                <a class="item-dropdown">{$MOD_ACTIONS}</a>
                                <div id="awaslokas">
                                    <a class="dropdown-item" href="{$LOCK_URL}" target="{$dropdown.target}">{$LOCK}</a>
                                    <a class="dropdown-item" href="{$MERGE_URL}" target="{$dropdown.target}">{$MERGE}</a>
                                    <a class="dropdown-item" href="{$MOVE_URL}" target="{$dropdown.target}">{$MOVE}</a>
                                    <a class="dropdown-item" href="{$STICK_URL}" target="{$dropdown.target}">{$STICK}</a>
                                    <a class="dropdown-item" data-toggle="modal" data-target="#eliminarpost">{$DELETE}</a>
                                </div>
                            </div>
                        </span>
                    {/if}
                  </ol>
            </nav>

            {foreach from=$REPLIES item=reply}
                <div class="card card-news" id="topic-post" post-id="{$reply.id}">
                    {if ($reply.id.first)}
                        <div class="card-header">
                            <span class="card-title">
                                <span class="float-right">
                                    {$TOPIC_LABEL}    
                                </span>
                                <span data-toggle="tooltip" title="{$started_by_val="`$TOPIC_AUTHOR_USERNAME`"}
                                {$STARTED_BY|replace:'{x}':$started_by_val}">{$TOPIC_TITLE}</span>
                            </span>
                        </div>
                    {/if}
                    <div class="card-body">
                        <div class="card-publicaciones border-0" id="topic-post" post-id="{$reply.id}">
                            <div class="row">
                                <div class="col-3 d-none d-sm-none d-md-block" id="post-sidebar">
                                    <div class="centro">
                                        <span class="rounded-circle">
                                            <img data-srcset="{$reply.avatar}" class="rounded-circle {if ($reply.online_now gte 1)}border border-success{/if} lazy" style="border-width: 2px !important;" alt="{$reply.username}" />
                                        </span>
                                        <br />
                                        <a href="{$reply.profile}" style="{$reply.user_style}">{$reply.username}</a>
                                        {if isset($reply.user_title)}
                                            <small class="text-muted">{$reply.user_title}</small>
                                        {/if}
                                        {foreach from=$reply.user_groups item=group}
                                            <br />
                                            {$group}
                                        {/foreach}
                                    </div>
                                </div>
                                <div class="col">
                                    <header class="n-user">
                                        <div class="container-fluid" style="margin-bottom: 6px;">
                                            <span>
                                                <img class="img" src="{$reply.avatar}" alt="{$reply.username}" /> 
                                                <a href="{$reply.profile}" style="{$reply.user_style}"> &nbsp; {$reply.username}</a>
                                            </span>
                                            <span data-toggle="tooltip" data-html="true" title="{$item.time_ago}">
                                                <span data-toggle="tooltip" data-trigger="hover" data-original-title="{$reply.post_date} &bull; {$reply.post_date_rough}"><i class="fa fa-clock"></i></span>
                                                {if $reply.edited !== null}&bull; <span rel="tooltip" data-toggle="hover" data-original-title="{$reply.edited} &bull; {$reply.edited_full}"> <i class="far fa-clock"></i></span>
                                                {/if}
                                            </span>
                                            <span class="valeehhta">
                                                <span>
                                                    {if isset($reply.buttons.spam)}
                                                    <span data-toggle="modal" data-target="#marcar-como-spam-{$reply.id}">                                 
                                                        <a class="normal m-1" data-toggle="tooltip" data-trigger="hover" title="{$reply.buttons.spam.TEXT}">
                                                            <i class="fas fa-ban" aria-hidden="true"></i>
                                                        </a>
                                                    </span>
                                                    {/if}

                                                    {if isset($reply.buttons.edit)}
                                                    <span>
                                                        <a class="normal m-1" data-toggle="tooltip" data-trigger="hover" title="{$reply.buttons.edit.TEXT}" href="{$reply.buttons.edit.URL}">
                                                            <i class="fas fa-pen" aria-hidden="true"></i>
                                                        </a>
                                                    </span>
                                                    {/if}

                                                    {if isset($reply.buttons.delete)}
                                                    <span data-toggle="modal" data-target="#eliminar-respuesta-{$reply.id}">
                                                            <a class="normal m-1" data-toggle="tooltip" data-trigger="hover" data-original-title="{$reply.buttons.delete.TEXT}">
                                                                <i class="fa fa-trash fa-fw" aria-hidden="true"></i>
                                                            </a>
                                                        </span>
                                                    {/if}
                                                    
                                                    {if isset($reply.buttons.report)}
                                                        <span data-toggle="modal" data-target="#reportar-{$reply.id}">
                                                            <a rel="tooltip" class="normal m-1" data-trigger="hover" data-toggle="tooltip" data-original-title="{$reply.buttons.report.TEXT}">
                                                                <i class="fa fa-exclamation-triangle fa-fw" aria-hidden="true"></i>
                                                            </a>
                                                        </span>
                                                    {/if}

                                                    {if isset($reply.buttons.quote)}
                                                        <a class="normal m-1" data-toggle="tooltip" data-trigger="hover" title="{$reply.buttons.quote.TEXT}" onclick="quote({$reply.id});">
                                                            <i class="fa fa-quote-left fa-fw" aria-hidden="true"></i>
                                                        </a>
                                                    {/if}
                                                </span>
                                            </span>
                                        </div>
                                    </header>
                                    
                                    <div class="col p-2 h-100 pb-3" id="post-content">
                                        <div class="forum_post">{$reply.content}</div>
                                        <div class="mt-auto row w-100 mb-3">
                                            {if $reply.user_id !== $USER_ID}
                                                {if isset($REACTIONS) && count($REACTIONS)}
                                                    <div class="col">
                                                        <span class="row">
                                                            {foreach from=$REACTIONS item=reaction}
                                                                <form action="{$REACTIONS_URL}" class="col-1 m-0 p-2 pt-0 pb-0" method="post">
                                                                    <input type="hidden" name="token" value="{$TOKEN}">
                                                                    <input type="hidden" name="reaction" value="{$reaction->id}">
                                                                    <input type="hidden" name="post" value="{$reply.id}">
                                                                    <a href="#" onclick="$(this).closest('form').submit();" rel="tooltip" data-toggle="hover" data-original-title="{$reaction->name}">{$reaction->html}</a>
                                                                </form>
                                                            {/foreach}
                                                        </span>
                                                    </div>
                                                {/if}
                                            {/if}
                                            <div class="col">
                                                {if count($reply.post_reactions)}
                                                    <span class="ml-auto d-table" data-toggle="modal" data-target="#Reacciones-{$reply.id}">
                                                        {foreach from=$reply.post_reactions name="reactions" item=reaction}
                                                            {$reaction.html} x {$reaction.count}
                                                            {if !($smarty.foreach.reactions.last)} | {/if}
                                                        {/foreach}
                                                    </span>
                                                {/if}
                                            </div>
<br />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                </div>
                {if count($reply.post_reactions)}
                    <div class="modal fade" id="Reacciones-{$reply.id}" tabindex="-1" role="dialog" aria-labelledby="Reacciones-{$reply.id}" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                            <h5 class="modal-title" id="Reacciones-{$reply.id}">{$REACTIONS_TEXT}</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                            </div>
                            <div class="modal-body">
                                {foreach from=$reply.post_reactions name=reactions item=reaction}
                                    <ul class="nav nav-tabs" id="myTab" role="tablist">
                                        <li class="nav-item">
                                        <a class="nav-link active" id="home-tab" data-toggle="tab" href="#ASDASDASDA" role="tab" aria-controls="home" aria-selected="true">{$reaction.html} x {$reaction.count}</a>
                                        </li>
                                    </ul>
                                    <div class="tab-content" id="myTabContent">
                                        <div class="tab-pane fade show active" id="ASDASDASDA" role="tabpanel" aria-labelledby="home-tab">
                                            <br>
                                            {foreach from=$reaction.users item=user}
                                                <a style="{$user.style}" href="{$user.profile}"><img src="{$user.avatar}" class="rounded" style="height:25px;width:25px;" alt="{$user.username}"/> {$user.nickname}</a>
                                                <br/>
                                            {/foreach}
                                        </div>
                                    </div>
                                {/foreach}
                            </div>
                        </div>
                        </div>
                    </div>
                {/if}               
                {if isset($reply.buttons.report)}
                    <div class="modal fade" id="reportar-{$reply.id}" tabindex="-1" role="dialog" aria-labelledby="reportar-{$reply.id}" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalCenterTitle">Modal title</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                            </div>
                            <div class="modal-body">
                                <form action="{$reply.buttons.report.URL}" method="post" id="form-report-{$reply.id}">
                                    <div class="ui form">
                                    <div class="field">
                                        <label for="InputReason">{$reply.buttons.report.REPORT_TEXT}</label>
                                        <textarea id="InputReason" name="reason" class="form-control"></textarea>
                                    </div>
                                    <input type="hidden" name="post" value="{$reply.id}">
                                    <input type="hidden" name="topic" value="{$TOPIC_ID}">
                                    <input type="hidden" name="token" value="{$TOKEN}">
                                    </div>
                                </form>
                            </div>
                            <div class="modal-footer">                        
                                <a class="btn btn-danger">{$CANCEL}</a>
                                <a class="btn btn-primary text-success" onclick="$('#form-report-{$reply.id}').submit();">{$reply.buttons.report.TEXT}</a>
                            </div>
                        </div>
                        </div>
                    </div>
                {/if}
                {if isset($reply.buttons.spam)}
                    <div class="modal fade" id="marcar-como-spam-{$reply.id}" tabindex="-1" role="dialog" aria-labelledby="marcar-como-spam-{$reply.id}" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalCenterTitle">
                                {$MARK_AS_SPAM}</h5>
                            <a type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </a>
                            </div>
                            <div class="modal-body">
                                {$CONFIRM_SPAM_POST}
                                <form action="{$reply.buttons.spam.URL}" method="post" id="form-spam-{$reply.id}">
                                  <input type="hidden" name="post" value="{$reply.id}">
                                  <input type="hidden" name="token" value="{$TOKEN}">
                                </form>
                            </div>
                            <div class="modal-footer">                        
                                <a class="btn btn-danger" data-dismiss="modal" aria-label="Close">{$CANCEL}</a>
                                <a class="btn btn-primary text-success" onclick="$('#form-spam-{$reply.id}').submit();">{$MARK_AS_SPAM}</a>
                            </div>
                        </div>
                        </div>
                    </div>
                {/if}
                {if isset($reply.buttons.delete)}
                    <div class="modal fade" id="eliminar-respuesta-{$reply.id}" tabindex="-1" role="dialog" aria-labelledby="eliminar-respuesta-{$reply.id}" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalCenterTitle">
                                {$CONFIRM_DELETE_SHORT}
                            </h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                            </div>
                            <div class="modal-body">
                                {$CONFIRM_DELETE_POST}
                                <form action="{$reply.buttons.delete.URL}" method="post" id="form-delete-{$reply.id}">
                                  <input type="hidden" name="tid" value="{$TOPIC_ID}">
                                  <input type="hidden" name="number" value="{$reply.buttons.delete.NUMBER}">
                                  <input type="hidden" name="pid" value="{$reply.id}">
                                  <input type="hidden" name="token" value="{$TOKEN}">
                                </form>
                            </div>
                            <div class="modal-footer">                        
                                <a class="btn btn-danger">{$CANCEL}</a>
                                <a class="btn btn-primary text-success" onclick="$('#form-delete-{$reply.id}').submit();">{$reply.buttons.delete.TEXT}</a>
                            </div>
                        </div>
                        </div>
                    </div>
                {/if}

            {/foreach}
            {if isset($TOPIC_LOCKED_NOTICE)}
                <div class="alert alert-info">{$TOPIC_LOCKED_NOTICE}</div>
            {/if}

            {if isset($CAN_REPLY)}
            <div class="card card-news">
                <div class="card-header">
                    <span class="card-title">
                        {$NEW_REPLY}
                    </span>
                </div>
                <div class="card-body">
                <div id="reply_section">
                    <form action="" method="post">
                        {if !isset($MARKDOWN)}
                            <textarea style="width:100%" name="content" id="quickreply" rows="15">{$CONTENT}</textarea>
                        {else}
                            <div class="form-group">
                                <textarea class="form-control" style="width:100%" id="markdown" name="content" rows="20">{$CONTENT}</textarea>
                                <span class="float-md-right">
                                    <i data-toggle="popover" data-placement="top" data-html="true" data-content="{$MARKDOWN_HELP}" class="fa fa-question-circle text-info" aria-hidden="true"></i>
                                </span>
                            </div>
                        {/if}
                        <br/>
                        <input type="hidden" name="token" value="{$TOKEN}">
                        <button type="submit" class="btn btn-primary">{$SUBMIT}</button>
                        <button type="button" class="btn btn-info" id="quoteButton" onclick="insertQuotes();">{$INSERT_QUOTES}</button>
                    </form>
                </div>
                </div>
            </div>
            {/if}
        </div>
    </div>
</div>


{if isset($CAN_MODERATE)}
  <div class="modal fade" id="eliminarpost" tabindex="-1" role="dialog" aria-labelledby="eliminarpost" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                {$CONFIRM_DELETE_SHORT}
                <button class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                {$CONFIRM_DELETE}
                <hr>
                <a class="btn btn-danger" data-dismiss="modal" aria-label="Close">{$CANCEL}</a>
                <a class="btn btn-success" href="{$DELETE_URL}">{$DELETE}</a>
            </div>
        </div>
    </div>
</div>
{/if}

{include file='footer.tpl'}