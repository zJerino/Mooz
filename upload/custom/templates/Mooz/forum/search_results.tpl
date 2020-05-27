{include file='header.tpl'}
{include file='navbar.tpl'}


<div class="container">
  {if empty($RESULTS)}
  ¯\_(ツ)_/¯ 
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