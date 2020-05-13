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
                    <span class="ml-auto">
                            {if isset($CAN_MODERATE)}
                                <div class="dropdown">
                                    <a class="btn btn-light btn-sm dropdown-toggle" data-toggle="dropdown">{$MOD_ACTIONS}</a>
                                    <div class="dropdown-menu">
                                        <a class="dropdown-header">{$MOD_ACTIONS}</a>
                                        <a href="{$LOCK_URL}" class="dropdown-item">{$LOCK}</a>
                                        <a href="{$MERGE_URL}" class="dropdown-item">{$MERGE}</a>
                                        <a href="#" class="dropdown-item" data-toggle="modal" data-target="#modal-forumTopicDelete">{$DELETE}</a>
                                        <a href="{$MOVE_URL}" class="dropdown-item">{$MOVE}</a>
                                        <a href="{$STICK_URL}" class="dropdown-item">{$STICK}</a>
                                    </div>
                                </div>
                            {/if}
                        </span>
                  </ol>
            </nav>

            {foreach from=$REPLIES item=reply}
                <div class="card card-news" id="topic-post" post-id="{$reply.id}">
                    <div class="card-header">
                        <span class="card-title">
                            <span class="float-right">
                                {$TOPIC_LABEL}    
                            </span>
                            <span data-toggle="tooltip" title="{$started_by_val="`$TOPIC_AUTHOR_USERNAME`"}
                            {$STARTED_BY|replace:'{x}':$started_by_val}">{$TOPIC_TITLE}</span>
                            
                            
                        </span>
                    </div>
                    <div class="card-body">
                        <div class="card-publicaciones" id="topic-post" post-id="{$reply.id}">
                            <div class="row">
                                <div class="col-3 d-none d-sm-none d-md-block" id="post-sidebar">
                                    <div class="centro">
                                        <img src="{$reply.avatar}" class="rounded-circle img" alt="{$reply.username}" />
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
                                                <i class="fa fa-clock"></i> 
                                                <span data-toggle="tooltip" data-trigger="hover" data-original-title="{$reply.post_date}">{$reply.post_date_rough}</span>
                                                {if $reply.edited !== null}&bull; <span rel="tooltip" data-toggle="hover" data-original-title="{$reply.edited} &bull; {$reply.edited_full}"> <i class="far fa-clock"></i></span>
                                                {/if}
                                            </span>
                                            <span class="valeehhta">
                                                <span>
                                                    {if isset($reply.buttons.spam)}                                                    
                                                        <a class="normal" rel="tooltip" data-trigger="hover" title="{$reply.buttons.spam.TEXT}" data-toggle="modal" data-target="#spam{$reply.id}Modal" href="{$reply.buttons.edit.URL}">
                                                            <i class="fas fa-ban" aria-hidden="true"></i>
                                                        </a>
                                                    {/if}

                                                    {if isset($reply.buttons.edit)}
                                                        <a class="normal" data-toggle="tooltip" data-trigger="hover" title="{$reply.buttons.edit.TEXT}" href="{$reply.buttons.edit.URL}">
                                                            <i class="fas fa-pen" aria-hidden="true"></i>
                                                        </a>
                                                    {/if}

                                                    {if isset($reply.buttons.delete)}
                                                        <a class="normal" rel="tooltip" data-trigger="hover" data-original-title="{$reply.buttons.delete.TEXT}" data-toggle="modal" data-target="#delete{$reply.id}Modal">
                                                            <i class="fa fa-trash fa-fw" aria-hidden="true"></i>
                                                        </a>
                                                    {/if}
                                                    
                                                    {if isset($reply.buttons.report)}
                                                        <a rel="tooltip" class="normal" data-trigger="hover" data-original-title="{$reply.buttons.report.TEXT}" data-toggle="modal" data-target="#report{$reply.id}Modal">
                                                         <i class="fa fa-exclamation-triangle fa-fw" aria-hidden="true"></i>
                                                        </a>
                                                    {/if}

                                                    {if isset($reply.buttons.quote)}
                                                        <a class="normal" data-toggle="tooltip" data-trigger="hover" title="{$reply.buttons.quote.TEXT}" onclick="quote({$reply.id});">
                                                            <i class="fa fa-quote-left fa-fw" aria-hidden="true"></i>
                                                        </a>
                                                    {/if}
                                                </span>
                                            </span>
                                        </div>
                                    </header>
                                    
                                    <div class="col card-deck" id="post-content">
                                        <div class="forum_post">{$reply.content}</div>
                                        <footer class="f-footer" style="min-width: 100%">
                                            <div class="col" id="reactions" style="min-width: 100%; display: inline-flex">
                                                {if $reply.user_id !== $USER_ID}
                                                    {if isset($REACTIONS) && count($REACTIONS)}
                                                        {foreach from=$REACTIONS item=reaction}
                                                          <form action="{$REACTIONS_URL}" method="post">
                                                            <input type="hidden" name="token" value="{$TOKEN}">
                                                            <input type="hidden" name="reaction" value="{$reaction->id}">
                                                            <input type="hidden" name="post" value="{$reply.id}">
                                                            <a href="#" onclick="$(this).closest('form').submit();" class="btn btn-light" rel="tooltip" data-toggle="hover" data-original-title="{$reaction->name}">{$reaction->html}</a>
                                                          </form>
                                                        {/foreach}
                                                      <br />
                                                    {/if}
                                                  {/if}
                                                {if count($reply.post_reactions)}
                                                    <span class="btn btn-light ml-auto"  data-toggle="modal" data-target="#reactions{$reply.id}ModalLabel">
                                                        {foreach from=$reply.post_reactions name="reactions" item=reaction}
                                                            {$reaction.html} x {$reaction.count}
                                                        {if !($smarty.foreach.reactions.last)} | {/if}
                                                        {/foreach}
                                                    </span>
                                                {/if}
                                            </div>
                                        </footer>
                                            
                                          </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                </div>
            {if count($reply.post_reactions)}
                    <!-- Reactions modal -->
                    <div class="modal fade" id="reactions{$reply.id}Modal" tabindex="-1" role="dialog"
                         aria-labelledby="reactions{$reply.id}ModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="reactions{$reply.id}ModalLabel">{$REACTIONS_TEXT}</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    {foreach from=$reply.post_reactions name=reactions item=reaction}
                                        <strong>{$reaction.html} x {$reaction.count}:</strong>
                                        <br/>
                                        {foreach from=$reaction.users item=user}
                                            <a style="{$user.style}" href="{$user.profile}"><img src="{$user.avatar}"
                                                                                                 class="rounded"
                                                                                                 style="height:25px;width:25px;"
                                                                                                 alt="{$user.username}"/> {$user.nickname}
                                            </a>
                                            <br/>
                                        {/foreach}
                                        {if !($smarty.foreach.reactions.last)}
                                            <hr/>
                                        {/if}
                                    {/foreach}
                                </div>
                            </div>
                        </div>
                    </div>
                {/if}

                {if isset($reply.buttons.report)}
                    <!-- Post report modal -->
                    <div class="modal fade" id="report{$reply.id}Modal" tabindex="-1" role="dialog"
                         aria-labelledby="report{$reply.id}ModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title"
                                        id="report{$reply.id}ModalLabel">{$reply.buttons.report.TEXT}</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <form action="{$reply.buttons.report.URL}" method="post">
                                    <div class="modal-body">
                                        <div class="form-group">
                                            <label for="InputReason">{$reply.buttons.report.REPORT_TEXT}</label>
                                            <textarea class="form-control" id="InputReason" name="reason"></textarea>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-warning"
                                                data-dismiss="modal">{$CANCEL}</button>
                                        <input type="hidden" name="post" value="{$reply.id}">
                                        <input type="hidden" name="topic" value="{$TOPIC_ID}">
                                        <input type="hidden" name="token" value="{$TOKEN}">
                                        <input type="submit" class="btn btn-danger"
                                               value="{$reply.buttons.report.TEXT}">
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                {/if}

                {if isset($CAN_MODERATE)}
                    <!-- Post spam modal -->
                    <div class="modal fade" id="spam{$reply.id}Modal" tabindex="-1" role="dialog"
                         aria-labelledby="spam{$reply.id}ModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="spam{$reply.id}ModalLabel">{$MARK_AS_SPAM}</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    {$CONFIRM_SPAM_POST}
                                </div>
                                <div class="modal-footer">
                                    <form action="{$reply.buttons.spam.URL}" method="post">
                                        <button type="button" class="btn btn-warning"
                                                data-dismiss="modal">{$CANCEL}</button>
                                        <input type="hidden" name="post" value="{$reply.id}">
                                        <input type="hidden" name="token" value="{$TOKEN}">
                                        <input type="submit" class="btn btn-danger" value="{$MARK_AS_SPAM}">
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Post deletion modal -->
                    <div class="modal fade" id="delete{$reply.id}Modal" tabindex="-1" role="dialog"
                         aria-labelledby="delete{$reply.id}ModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title"
                                        id="delete{$reply.id}ModalLabel">{$CONFIRM_DELETE_SHORT}</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    {$CONFIRM_DELETE_POST}
                                </div>
                                <div class="modal-footer">
                                    <form action="{$reply.buttons.delete.URL}" method="post">
                                        <button type="button" class="btn btn-warning"
                                                data-dismiss="modal">{$CANCEL}</button>
                                        <input type="hidden" name="tid" value="{$TOPIC_ID}">
                                        <input type="hidden" name="number" value="{$reply.buttons.delete.NUMBER}">
                                        <input type="hidden" name="pid" value="{$reply.id}">
                                        <input type="hidden" name="token" value="{$TOKEN}">
                                        <input type="submit" class="btn btn-danger"
                                               value="{$reply.buttons.delete.TEXT}">
                                    </form>
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

{include file='footer.tpl'}