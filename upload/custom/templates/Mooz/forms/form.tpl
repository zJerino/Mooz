{include file='header.tpl'}
{include file='navbar.tpl'}

<div class="container">
	{if !empty($WIDGETS)}
	<div class="row">
	  <div class="col-md-9">
	{/if}
	{if isset($SUCCESS)}
		<div class="alert alert-success" role="alert">
			<p class="p-0 m-0"><i class="fa fa-check-circle"></i> {$SUCCESS}</p>
	  	</div>
	   {/if}
				
	{if isset($ERRORS)}
		<div class="alert alert-danger" role="alert">
			<p class="p-0 m-0">
				{foreach from=$ERRORS item=error}
				<i class="fa fa-times-circle"></i> {$error}<br />
			  	{/foreach}
			</p>
	  	</div>
	{/if}
	<div class="card card-news">
		<div class="card-header">
			{$TITLE}
		</div>
	  	<div class="card-body">
		  <form action="" method="post">
				{foreach from=$FIELDS item=field}
			  		{if $field.type == "1"}
			  			<div class="form-group">
							<label for="{$field.id}">{$field.name} {if $field.required}<span style="color:red"><strong>*</strong></span>{/if}</label>
							<input type="text" class="form-control" id="{$field.id}" name="{$field.id}" placeholder="{$field.name}">
			  			</div>
			  		{elseif $field.type == "2"}
			  			<div class="form-group">
			  				<label for="{$field.id}">{$field.name} {if $field.required}<span style="color:red"><strong>*</strong></span>{/if}</label>
							<select class="form-control" name="{$field.id}" id="{$field.id}">
				  				{foreach from=$field.options item=option}
									<option  value="{$option}">{$option}</option>
								{/foreach}
							</select>
						</div>
			  		{elseif $field.type == "3"}
						<div class="form-group">	
							<label for="{$field.id}">
								{$field.name} {if $field.required}<span style="color:red"><strong>*</strong></span>{/if}
							</label>
							<textarea class="form-control" name="{$field.id}" id="{$field.id}"></textarea>
			  			</div>
			  		{/if}
		  		{/foreach}
				<input type="hidden" name="token" value="{$TOKEN}">
				<input type="submit" class="btn btn-primary" value="{$SUBMIT}">
			  </form>
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