{include file='header.tpl'}
{include file='navbar.tpl'}

<div class="container">
    <div class="row">
        <div class="col-lg-3">
            {include file='user/navigation.tpl'}
        </div>
        <div class="col">
              <div class="card card-news">
                  <div class="card-header">
                      <span class="card-title">
                          {$MESSAGING}
                          
                          {if isset($NEW_MESSAGE)}
                            <span class="float-right badge badge-success">
                                <a data-toggle="tooltip" title="{$NEW_MESSAGE}" class="normal" href="{$NEW_MESSAGE_LINK}"><i class="far fa-paper-plane"></i></a>
                            </span>
                          {/if}
                      </span>
                  </div>
                  <div class="card-body">
                      <div class="container">
                          {nocache}
                            {if count($MESSAGES)}
                                {foreach from=$MESSAGES item=message}
                                    <ul class="list-group list-group-flush">
                                        <li class="list-group-item">
                                            <a class="normal">
                                                <div class="row">
                                                    <div class="col-1">
                                                        <img class="img-mini lazy" data-src="{$message.last_message_user_avatar}" data-srcset="{$message.last_message_user_avatar}">
                                                    </div>
                                                    <div class="col-4">
                                                        <b><a href="{$message.link}">{$message.title}</a></b>
                                                        <br/>
                                                        <small>
                                                                <a style="{$message.last_message_user_style}">
                                                                    {$message.last_message_user}
                                                                </a>
                                                                <span data-toggle="tooltip" data-content="{$message.last_message_date_full}">{$message.last_message_date}
                                                                </span>
                                                        </small>
                                                    </div>
                                                </div>
                                            </a>
                                        </li>
                                    </ul>
                                {/foreach}
                            {else}
                                <div class="alert alert-info">
                                    <div class="container">
                                        <i class="fa fa-comment-slash"></i> {$NO_MESSAGES}
                                    </div>
                                </div>
                            {/if}
                          {/nocache}
                          
                        <div class="centro">{$PAGINATION}</div>
                      </div>
                  </div>
              </div>
        </div>
    </div>
</div>
{include file='footer.tpl'}