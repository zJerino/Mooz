{include file='header.tpl'}
{include file='navbar.tpl'}
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">              
            {if isset($ERRORS)}
              <div class="alert alert-danger">
                {foreach from=$ERRORS item=error}
                    {$error}<br />
                {/foreach}
              </div>
            {/if}

            <div class="alert alert-info">
                {$AUTHME_INFO}
            </div>
<div class="card card-news">           
    <div class="card-header">
	    <span class="card-title">
					{$CONNECT_WITH_AUTHME}
		</span>
			</div>
            <div class="card card-news">
                <div class="card-body">
                    <div class="container">
                        <form action="" method="post">
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <label for="username" class="input-group-text col-form-label">{$USERNAME}</label>
                                </div>
                                <input type="text" name="username" id="username" class="form-control">
                            </div>
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <label for="password" class="input-group-text col-form-label">{$PASSWORD}</label>
                                </div>
                                <input type="password" name="password" id="password" class="form-control">
                            </div>
                            {if isset($RECAPTCHA)}
                                <div class="form-group">
                                    <center>
                                        <div class="g-recaptcha" data-sitekey="{$RECAPTCHA}"></div>
                                    </center>
                                </div>
                            {/if}
                            <br />                            
                            <div class="form-group">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" id="t_and_c">
                                    <label class="form-check-label" for="gridCheck" name="t_and_c" id="t_and_c" value="1">
                                        <span>{$I_AGREE}</span>
                                        <br/>
                                        <span><small>{$AGREE_TO_TERMS}</small></span>
                                    </label>
                                </div>
                            </div>
                            <input type="submit" class="btn btn-primary" value="{$SUBMIT}">                    
                            <input type="hidden" name="token" value="{$FORM_TOKEN}">
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
{*
<div class="container">
  <div class="card card-news">
    <div class="card-body">
	  <form action="" method="post">
	    <h2 class="card-header card-title">{$CONNECT_WITH_AUTHME}</h2>
        <hr />
		
		{if isset($ERRORS)}
		  <div class="alert alert-danger">
		    {foreach from=$ERRORS item=error}
                {$error}<br />
		    {/foreach}
		  </div>
		{/if}

		<div class="alert alert-info">
			{$AUTHME_INFO}
		</div>

		<div class="form-group">
			<label for="inputUsername">{$USERNAME}</label>
			<input type="text" id="inputUsername" name="username" class="form-control" placeholder="{$USERNAME}">
		</div>

		<div class="form-group">
			<label for="inputPassword">{$PASSWORD}</label>
			<input type="password" id="inputPassword" name="password" class="form-control" placeholder="{$PASSWORD}">
		</div>

        {if isset($RECAPTCHA)}
        <div class="form-group">
            <center>
              <div class="g-recaptcha" data-sitekey="{$RECAPTCHA}"></div>
            </center>
        </div>
        {/if}

        <hr />
        {$AGREE_TO_TERMS}
        <br />
		<span class="button-checkbox">
		  <button type="button" class="btn" data-color="info" tabindex="7"> {$I_AGREE}</button>
		  <input type="checkbox" name="t_and_c" id="t_and_c" style="display:none;" value="1">
		</span>


        <br />

	    <input type="hidden" name="token" value="{$TOKEN}">
	    <br />
	    <input type="submit" value="{$SUBMIT}" class="btn btn-primary">
	  </form>
	</div>
  </div>
</div>*}

{include file='footer.tpl'}
