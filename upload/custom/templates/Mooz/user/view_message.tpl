{include file='header.tpl'}
{include file='navbar.tpl'}

<div class="container">
    <div class="row">
        <div class="col-lg-3">
            {include file='user/navigation.tpl'}
            
            <div class="card card-news">
                <div class="card-body">
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">
                            {$PARTICIPANTS_TEXT}: {$PARTICIPANTS}
                        </li>
                        <li class="list-group-item">
                            <a href="{$LEAVE_CONVERSATION_LINK}" onclick="return confirm('{$CONFIRM_LEAVE}');">{$LEAVE_CONVERSATION}</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="col">
              <div class="card card-news">
                  <div class="card-header">
                      <span class="card-title">
                          {$MESSAGE_TITLE}
                      </span>
                  </div>
                  <div class="card-body">
                      <div class="container">
                            {if count($ERROR)}
                                <div class="alert alert-danger">
                                    <div class="container">
                                            <li style="list-style: none">
                                                <i class="material-icons">cancel</i> <b>{$ERROR_TITLE}</b>
                                                {$ERROR}
                                            </li>
                                    </div>
                                </div>
                            {/if}
                            {if count($MESSAGE_SENT)}
                                <div class="alert alert-success">
                                    <div class="container">
                                            <li style="list-style: none">
                                                <i class="fa fa-check-circle"></i> <b>{$SUCCESS_TITLE}</b>
                                                {$MESSAGE_SENT}
                                            </li>
                                    </div>
                                </div>
                            {/if}
                          
                          {foreach from=$MESSAGES item=message}
                            {if ($USER_SECTION.account.title === $message.author_username)}
                                <span class="chip float-right" id="message" data-toggle="tooltip" title="{$message.message_date_full}">
                                    <p> {$message.content}</p>
                                </span>
                                <br>
                            {else}
                                <div class="chip" id="message" data-toggle="tooltip" title="{$message.message_date_full}">
                                    <div style="display: flex;padding: 0px 5px;">
                                        <span id="AutorDeMensaje">
                                            <img class="chip-img lazy" data-src="{$message.author_avatar}" style="    margin: 4px 0px;" data-srcset="{$message.author_avatar}">
                                            <a href="{$message.author_profile}" style="{$message.author_style}">
                                                {$message.author_username}
                                            </a>: &ensp;
                                        </span>
                                        <p> {$message.content}</p>
                                    </div>
                                </div>
                                <br>
                            {/if}
                            <br />
                            <br />
                          {/foreach}
                          
                          <br />
                          <br />
                          <hr/>
                          <h5><b>{$NEW_REPLY}</b></h5>
                            <form action="" method="post">
                                {if isset($MARKDOWN)}
                                    <input type="text" class="form-control" id="COMENTARIOS" name="content" placeholder="{$CONTENT}"/>
                                {else}
                                    <input type="text" class="form-control" id="COMENTARIOS" name="content" placeholder="{$CONTENT}"/>
                                {/if}
                                <br />
                                <input type="hidden" name="token" value="{$TOKEN}">
                                <input type="submit" class="btn btn-primary" name="{$SUBMIT}">
                            </form>
                      </div>
                      <span class="d-flex">
                          
                      {$PAGINATION}
                      </span>
                  </div>
              </div>
        </div>
    </div>
</div>
{include file='footer.tpl'}
