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
                          {$NEW_MESSAGE}
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
                          <form class="ui form" action="" method="post" id="form-new-message">
                              <div class="form-group">
                                  <label for="inputTitle">{$MESSAGE_TITLE}</label>
                                  <input type="text" id="inputTitle" class="form-control" name="title" placeholder="{$MESSAGE_TITLE}" value="{$MESSAGE_TITLE_VALUE}">
                              </div>
                              <div class="form-group">
                                  <label for="InputTo">{$TO} <small><em>{$SEPARATE_USERS_WITH_COMMAS}</em></small></label>
                                  <input class="form-control" type="text" id="InputTo" name="to" {if isset($TO_USER)}value="{$TO_USER}"{/if}>
                              </div>
                              
                              <script type="text/javascript">
                                  let allUsers = [{$ALL_USERS}];
                              </script>
                              
                              {if !isset($MARKDOWN)}
                                <div class="form-group">
                                    <input type="text" style="width:100%"  class="form-control" name="content" id="reply" placeholder="{$CONTENT}" rows="1">
                                </div>
                              {else}
                                <div class="form-group">
                                    <input type="text" placeholder="{$CONTENT}" class="form-control" style="width:100%" id="markdown" name="content" rows="1">
                                    <span class="float-md-right">
                                        <i data-toggle="popover" data-placement="top" data-html="true" data-content="{$MARKDOWN_HELP}" class="fa fa-question-circle text-info" aria-hidden="true"></i>
                                    </span>
                                </div>
                                {/if}

                                <div class="form-group">
                                  <input type="hidden" name="token" value="{$TOKEN}">
                                  <input type="submit" value="{$SUBMIT}" class="btn btn-primary">
                                </div>
                          </form>
                      </div>
                  </div>
              </div>
        </div>
    </div>
</div>
{include file='footer.tpl'}