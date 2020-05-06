{include file='header.tpl'}
{include file='navbar.tpl'}
<div class="container">
    <div class="row">
        <div class="col-3">
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
{*
<h2 class="ui header">
  {$TITLE}
</h2>

{if isset($ERROR)}
  <div class="ui error icon message">
    <i class="x icon"></i>
    <div class="content">
      <div class="header">{$ERROR_TITLE}</div>
      {$ERROR}
    </div>
  </div>
{/if}

<div class="ui stackable grid" id="new-message">
  <div class="ui centered row">
    <div class="ui six wide tablet four wide computer column">
	  {include file='user/navigation.tpl'}
    </div>
    <div class="ui ten wide tablet twelve wide computer column">
      <div class="ui segment">
        <h3 class="ui header">{$NEW_MESSAGE}</h3>
		<form class="ui form" action="" method="post" id="form-new-message">
		  <div class="field">
			<label for="inputTitle">{$MESSAGE_TITLE}</label>
			<input type="text" name="title" id="inputTitle" placeholder="{$MESSAGE_TITLE}" value="{$MESSAGE_TITLE_VALUE}">
		  </div>
		  <div class="field">
			<label for="InputTo">{$TO}</label>
			<div class="ui fluid multiple search selection dropdown">
 			 <input name="to" id="InputTo" type="hidden">
 			 <i class="dropdown icon"></i>
 			 <div class="default text">{$TO}</div>
 			 <div class="menu">
 			   {foreach from=","|explode:$ALL_USERS|replace:'"':'' item="item"}
 			     <div class="item" data-value="{$item}">{$item}</div>
 			   {/foreach}
 			 </div>
			</div>
		  </div>
		  {if isset($MARKDOWN)}
			<div class="field">
			  <textarea name="content" id="markdown">{$CONTENT}</textarea>
			</div>
		  {else}
			<div class="field">
			  <textarea name="content" id="reply">{$CONTENT}</textarea>
			</div>
		  {/if}
		  <input type="hidden" name="token" value="{$TOKEN}">
		  <input type="submit" class="ui primary button" value="{$SUBMIT}">
		</form>
      </div>
    </div>
  </div>
</div>*}
			
{include file='footer.tpl'}