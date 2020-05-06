{include file='header.tpl'}
{include file='navbar.tpl'}

<h2>{$CONNECT_WITH_AUTHME}</h2>

{if count($ERRORS)}
	<div class="alert alert-danger">
		{foreach from=$ERRORS item=error}
			<li>{$error}</li>
		{/foreach}
	</div>
{/if}

{if isset($AUTHME_SUCCESS)}
	<div class="alert alert-info">
		{$AUTHME_SUCCESS} {$AUTHME_INFO}
	</div>
{/if}

<div class="card-news card-body">
	<div class="row justify-content-center">
		<div class="col-lg-6">
			<form action="" method="post" id="form-authmeEmail">
				<div class="form-group">
					<label for="inputEmail">{$EMAIL}</label>
					<input type="email" name="email" class="form-control" id="inputEmail">
				</div>
				{if isset($NICKNAME)}
					<div class="form-group">
						<label for="inputNickname">{$NICKNAME}</label>
						<input type="text" name="nickname" class="form-control" id="inputNickname">
					</div>
				{/if}
				<div class="form-actions">
					<label for="t_and_c">
						<input type="checkbox" name="t_and_c" id="t_and_c" value="1">
						<span>{$AGREE_TO_TERMS}</span>
					</label>
					<input type="submit" class="btn btn-primary" value="{$SUBMIT}">
					<input type="hidden" name="token" value="{$TOKEN}">
				</div>
			</form>
		</div>
	</div>
</div>

{include file='footer.tpl'}