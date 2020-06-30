{include file='header.tpl'}
{include file='navbar.tpl'}

<div class="container" >
	{if !empty($WIDGETS)}
	<div class="row">
	  <div class="col-md-9" id="contenido">
	{/if}
	<div class="card card-news">
		<div class="card-header">
			<span class="card-title">
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
			<div class="container">
				{foreach from=$ENTRIES item=entry}
                    <p>
                       {$entry.number} &bull; {$entry.rule}
                        <br />
                         {$RULES_PAGE_PUNISHMENT} 
                        <span id="Sancion"> {$entry.punishment} </span>
                    </p>
                    <hr/>
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