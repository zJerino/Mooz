  if (loggedIn == 1) {

    var countPms = 0;
    var countAlerts = 0;
  
      function updateAlerts(data) {
      if (data.value > 0) {
          $("#button-alerts").removeClass('nada').addClass('animacion0003');
        var alerts_list = '';
        for (var i in data.alerts) {
          alerts_list += '<a class="dropdown-item" href="' + URLBuild('user/alerts/?view=' + data.alerts[i].id) + '">' + data.alerts[i].content_short + '</a>';
        }
        $('#list-alerts').html(alerts_list);
      } else {
        $('#list-alerts').html('<a class="dropdown-item">' + noAlerts + '</a>');
      }
  
      countAlerts = data.value;
      }
      
      function notifyAlerts(data) {
      if (data.value > 0) {
        if (data.value == 1) {
                  toastr.options.onclick = function () {redirect(URLBuild('user/alerts'))};
                  toastr.info(newAlert1);
          } else {
                  toastr.options.onclick = function () {redirect(URLBuild('user/alerts'))};
                  toastr.info(newAlertsX.replace("{x}", data.value));
        }
              if (Notification.permission !== "granted") {
              Notification.requestPermission();
            } else {
              if (data.value == 1) {
                  var notification = new Notification(
                    siteName, {body: newAlert1}
                );
              } else {
                  var notification = new Notification(
                    siteName, {body: newAlertsX.replace("{x}", data.value)}
                );
              }
              notification.onclick = function () {
                window.open(URLBuild('user/alerts'));
              };
            }
              countAlerts = data.value;
        }
      }
      
      function updatePMs(data) {
      if (data.value > 0) {
        $("#button-pms").removeClass('nada').addClass('animacion0003');
        var pms_list = '';
        for (var i in data.pms) {
          pms_list += '<a class="dropdown-item" href="' + URLBuild('user/messaging/?action=view&amp;message=' + data.pms[i].id) + '">' + data.pms[i].title + '</a>';
        }
        $('#list-pms').html(pms_list);
      } else {
        $('#list-pms').html('<a class="dropdown-item">' + noMessages + '</a>');
      }
  
      countPms = data.value;
      }
      
      function notifyPMs(data) {
      if (data.value > 0) {
        if (data.value == 1) {
                  toastr.options.onclick = function () {redirect(URLBuild('user/messaging'))};
                  toastr.info(newMessage1);
          } else {
                  toastr.options.onclick = function () {redirect(URLBuild('user/messaging'))};
                  toastr.info(newMessagesX.replace("{x}", data.value));
        }
              if (Notification.permission !== "granted") {
              Notification.requestPermission();
            } else {
              if (data.value == 1) {
                  var notification = new Notification(
                    siteName, {body: newMessage1}
                );
              } else {
                  var notification = new Notification(
                    siteName, {body: newMessagesX.replace("{x}", data.value)}
                );
              }
              notification.onclick = function () {
                window.open(URLBuild('user/messaging'));
              };
            }
              countPms = data.value;
        }
      }
      
      $(document).ready(function () {	
          
        if (Notification) {
          if (Notification.permission !== "granted")
            Notification.requestPermission();
        }
          $.getJSON(URLBuild('queries/alerts'), function(data) {
            updateAlerts(data);
          });
          $.getJSON(URLBuild('queries/pms'), function(data) {
            updatePMs(data);
          });      
          window.setInterval(function () {
            $.getJSON(URLBuild('queries/alerts'), function(data) {
              if (countAlerts < data.value) {
                notifyAlerts(data);
              }
              updateAlerts(data);
            });
            $.getJSON(URLBuild('queries/pms'), function(data) {
              if (countPms < data.value) {
                notifyPMs(data);
              }
              updatePMs(data);
            });
          }, 100000);      
      });
      
      
  } else if (cookie == '1') {
      toastr.info(cookieNotice);
      $(document).ready(function(){
          $("body").addClass('d-block').removeClass('d-none').addClass('animated fadeIn slow');
      });
  }
  
$(function() {
  var cachedUsers = {};
  var timeoutId;

  $('*[data-poload]').mouseenter(function (){
      var elem = this;
      $.get($(elem).data('poload'),
      function(d) {
          (debugging ? console.log(d) : '');
          var data = JSON.parse(d);
          cachedUsers[$(elem).data('poload')] = data;
          var tmp = document.createElement('div');
          tmp.innerHTML = data.html;
          var img = tmp.getElementsByTagName('img')[0];
          var image = new Image();
          image.src = img.src;
      });
  });
                  
  $('*[data-poload]').popup({
      hoverable: true,
      variation: 'special flowing',
      html: '...',
      delay: {show: 500, hide: 200},
      onShow: function(e) {this.html(cachedUsers[$(e).data('poload')].html)}
  });
});
