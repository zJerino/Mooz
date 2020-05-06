{include file='header.tpl'}
    

<div class="mantenimiendoxxd">
    <div class="card card-news">
        <div class="card-header">
            <span class="card-title">
                {$MAINTENANCE_TITLE}
            </span>
        </div>
        <div class="card-body">
            <div class="container">
                {$MAINTENANCE_MESSAGE}
            </div>
        </div>
        <div class="card-footer blanco">
            <a class="btn btn-primary" onclick="javascript:history.go(-1)">{$BACK}</a>
            <a class="btn btn-secondary" onclick="window.location.reload()">{$RETRY}</a>
            <a href="https://google.com" class="btn btn-danger">{$LEAVE}</a>
        </div>
    </div>
</div>
    <script type="text/javascript" src="{$TEMPLATE.path}js/jquery.min.js"></script>
    <script type="text/javascript" src="{$TEMPLATE.path}js/scripts.js"></script>
</body>
</html>