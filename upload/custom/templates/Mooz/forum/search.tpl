{include file='header.tpl'}
{include file='navbar.tpl'}

<div class="container">
  {if isset($ERROR)}
    <span class="alert alert-danger">
      <b>{$ERROR_TITLE}</b> {$ERROR}
    </span>
{/if}
  <div class="card card-news">
    <div class="card-header">
      {$SEARCH}
    </div>
    <div class="card-body">
      <form class="ui form" action="" method="post" id="form-forum-search">
        <div class="form-group row justify-content-center">
          <div class="col-sm-10">
            <input type="hidden" name="token" value="{$TOKEN}">
            <input type="text" class="form-control" name="forum_search" id="Buscar" placeholder="{$SEARCH}">
          </div>
          <div class="col">
            <button type="submit" class="btn btn-primary"><i class="fa fa-search"></i></button>
          </div>
        </div>
      </form>
    </div>
</div>
{include file='footer.tpl'}