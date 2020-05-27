{include file='header.tpl'}
{include file='navbar.tpl'}


<div class="container">
  <div class="card card-news">
    <div class="card-header">
      <span class="card-title">
        {$TITLE}
      </span>
    </div>
    <div class="card-body">
      <form action="" method="post" id="form-move-topic">
        <div class="field">
          <label for="name">{$MOVE_TO}</label>
          <select name="forum" class="form-control" id="InputForum">
            {foreach from=$FORUMS item=forum}
              <option value="{$forum->id}">{$forum->forum_title|escape}</option>
            {/foreach}
          </select>
        </div>
        <br>
        <input type="hidden" name="token" value="{$TOKEN}">
        <input type="submit" class="btn btn-primary" value="{$SUBMIT}">
        <a class="btn btn-danger" href="{$CANCEL_LINK}" onclick="return confirm('{$CONFIRM_CANCEL}')">{$CANCEL}</a>
      </form>
    </div>
  </div>
</div>

{include file='footer.tpl'}