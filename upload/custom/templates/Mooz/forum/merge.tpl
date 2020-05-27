{include file='header.tpl'}
{include file='navbar.tpl'}

<div class="container">
  <div class="card card-news">
    <div class="card-header">
      <span class="card-title">
        {$MERGE_TOPICS}
      </span>
    </div>
    <div class="card-body">
      <form action="" method="post" id="form-merge-topic">
        <div class="field">
          <label for="name">{$MERGE_INSTRUCTIONS}</label>
          <select name="merge" class="form-control"  id="InputTopic">
            {foreach from=$TOPICS item=topic}
              <option value="{$topic->id}">{$topic->topic_title|escape}</option>
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