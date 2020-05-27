{include file='header.tpl'}
{include file='navbar.tpl'}

<div class="container" >
	{if !empty($WIDGETS)}
	<div class="row">
	  <div class="col-md-9" id="contenido">
	{/if}
	<div class="card card-news">
		<div class="card-header">
			<span>
				<ul class="row no-gutters mb-0 px-2">
					{$TITLE}
		  		</ul>
			</span>
		</div>
	  <div class="card-body">
			{if isset($MESSAGE_ENABLED)}
				<div class="alert alert-info">
					{$MESSAGE}
				</div>
			  {/if}
			<div class="row">
				{foreach from=$SITES item=site}
					<div class="col-md _asduasdi mb-2">
				  		<a class="btn btn-primary" href="{$site.url}" target="_blank" role="button"> {$site.name}</a>
					</div>
		  		{/foreach}
			</div>
	  </div>
	</div>
	{if !empty($WIDGETS)}
	</div>
	<div class="col-md-3">
	{foreach from=$WIDGETS item=widget}
	  {$widget}<br /><br />
	{/foreach}
	</div>
	</div>
	{/if}
  </div>
  

{include file='footer.tpl'}