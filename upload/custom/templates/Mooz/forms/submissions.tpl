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
                	<span class="card-title">{$SUBMISSIONS}</span>
				</div>
                <div class="card-body">
					{nocache}
						{if count($SUBMISSIONS_LIST)}
							<table class="table" id="tablaprro">
								<thead>
						  			<tr>
										<th scope="col" style="height: auto;">{$FORM}</th>
										<th scope="col" style="height: auto;">{$UPDATED_BY}</th>
										<th scope="col" style="height: auto;">{$STATUS}</th>
										<th></th>
						  			</tr>
								</thead>
								<tbody>
									{foreach from=$SUBMISSIONS_LIST item=submission}
							  			<tr>
											<td>
												<a href="{$submission.updated_by_profile}" style="{$submission.updated_by_style}"><img src="{$submission.updated_by_avatar}" style="max-height:25px;max-width:25px;" alt="{$submission.updated_by_name}"> {$submission.updated_by_name}</a>
												 <br /><span data-toggle="tooltip" data-original-title="{$submission.reported_at_full}">{$submission.updated_at}</span>
											</td>
											<td>{$submission.form_name}</td>
											<td><b>{$submission.status}</b></td>
											<td><a href="{$submission.link}" class="ui right floated small primary button float">{$VIEW} &raquo;</a></td>
							  			</tr>
						  			{/foreach}
								</tbody>
				  			</table>
						{else}
							{$NO_SUBMISSIONS}
						{/if}
					{/nocache}
                </div>
            </div>
        </div>
    </div>
</div>
{include file='footer.tpl'}