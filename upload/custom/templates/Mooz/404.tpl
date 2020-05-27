{include file='header.tpl'}
{include file='navbar.tpl'}

<center>
  <div class="container">
    <div class="card card-news">
      <div class="card-header"><span class="card-title d-table-mx-auto">{$TITLE}</span></div>
      <div class="card-body">
        <p>{$CONTENT}</p>
        <p>{$ERROR}</p>
        <div class="btn-group">
          <a onclick="javascript:history.go(-1)" href="#" class="btn btn-danger">{$BACK}</a>
          <a href="{$SITE_HOME}" class="btn btn-success">{$HOME}</a>
        </div>
      </div>
    </div>
  </div>
</center>
{include file='footer.tpl'}