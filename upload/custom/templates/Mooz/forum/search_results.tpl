{include file='header.tpl'}
{include file='navbar.tpl'}
<div class="container">
  {if empty($RESULTS)}
<div class="container">
    <div class="card card-news">
        <div class="card-header">
            <span class="card-title">
                {$SEARCH_RESULTS}
            </span>
        </div>
        <div class="card-body">
            <div class="container">
                <span style="display:block;">{$NO_RESULTS} (´。＿。｀)</span> 
                <span class="btn btn-primary float-right"><a href="{$NEW_SEARCH_URL}">{$NEW_SEARCH}</a></span>
            </div>     
        </div>
    </div>
</div>
  {else}
  {foreach from=$RESULTS item=result}
  <div class="card card-news">
    <div class="card-header">
      <a href="{$result.post_url}">{$result.topic_title}</a>
    </div>
    <div class="card-body">
      {$result.content}
    </div>
    <div class="card-footer">
      <a class="btn btn-primary float-right" href="{$result.post_url}">{$READ_FULL_POST}</a>
    </div>
    
  {/foreach}
  {/if}
  {if isset($PAGINATION)}
    {$PAGINATION}
  {/if}
</div>

{include file='footer.tpl'}