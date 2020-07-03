{include file='header.tpl'}
{include file='navbar.tpl'}

<div class="container">
	{if !empty($WIDGETS)}
	<div class="row">
	  <div class="col-md-9">
	{/if}
	<div class="card card-news">
		<div class="card-header">
			<span>
				<ul class="row no-gutters mb-0 px-2">
				    <div class="card-title">
                      {$TITLE}
					</div>
					{* Si hay mas de 6 grupos se hace un drop down de semantic ui*}
					<a class="ml-auto" data-variation="mini" data-toggle="popup2"><i class="fa fa-user-tag"></i></a>
					<div class="ui popup">
						<a class="item-dropdown" href="{$ALL_LINK}">{$DISPLAY_ALL}</a>
							<div id="awaslokas">
					{foreach from=$GROUPS item=groups}
						<a class="dropdown-item" href="{$groups.grouplink}">{$groups.groupname}</a>
					{/foreach}	
				</div>
			</div>
		  		</ul>
			</span>
		</div>
	  <div class="card-body">
		  <table class="table" id="tablaprro" style="width: 100%;">
  			<thead>
    			<tr>
      				<th scope="col" style="height: auto;">{$USERNAME}</th>
      				<th scope="col" style="height: auto;">{$GROUP}</th>
      				<th scope="col" style="height: auto;">{$CREATED}</th>
    			</tr>
  			</thead>
  			<tbody>
			  	{foreach from=$MEMBERS item=member}
    				<tr>
      					<td><a href="{$member.profile}"><img data-src="{$member.avatar}" data-srcset="{$member.avatar}" class="lazy rounded-circle" style="height:35px; width:35px;" alt="{$member.nickname}" /></a> <a style="color:{$member.group_colour};" href="{$member.profile}">{$member.nickname}</a></td>
      					<td>{$member.group}</td>
      					<td>{$member.joined}</td>
					</tr>
				{/foreach}
  			</tbody>
		</table>
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
