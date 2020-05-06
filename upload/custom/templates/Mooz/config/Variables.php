<?php 
	    $JSVars = '';
	    $i = 0;
		foreach ($JSVariables as $var => $value) {
		    $JSVars .= ($i == 0 ? 'var ' : ', ') . $var . ' = "' . $value . '"';
		    $i++;
		}

    $this->addJSScript(
			'
			   $(".pop").popover({ trigger: "manual" , html: true, animation:false, placement: "top" })
			    .on("mouseenter", function () {
			        var _this = this;
			        $(this).popover("show");
			        $(".popover").on("mouseleave", function () {
			            $(_this).popover(\'hide\');
			        });
			    }).on("mouseleave", function () {
			        var _this = this;
			        setTimeout(function () {
			            if (!$(".popover:hover").length) {
			                $(_this).popover(\'hide\');
			            }
			        }, 300);
			   });
			   $(function () {
			      $(\'[data-toggle="tooltip"]\').tooltip()
			      });
			      $(function () {
			      $(\'[rel="tooltip"]\').tooltip()
			      });
			
			      $(\'[data-toggle="popover"]\').popover({ trigger: "manual" , html: true, animation:false}).on("mouseenter", function () {
			      var _this = this;
			      $(this).popover("show");
			      $(".popover").on("mouseleave", function () {
			        $(_this).popover(\'hide\');
			      });
			      }).on("mouseleave", function () {
			      var _this = this;
			      setTimeout(function () {
			        if (!$(".popover:hover").length) {
			          $(_this).popover("hide");
			        }
			      }, 300);
				});
				
				$(document).ready(function(){
					var cachedUsers = {};
					var timeoutId;

				   $(\'*[data-poload]\').mouseenter(function (){
				   	var elem = this;
				   	if(!timeoutId){
				        timeoutId = window.setTimeout(function() {
				            timeoutId = null;
						    var data = cachedUsers[$(elem).data(\'poload\')];
						    $(elem).popover({trigger:"manual",animation:false,content:data.html}).popover("show");
						    $(\'.popover\').mouseleave(function (){
						        if(!$(".popover:hover").length){
						          $(this).popover("hide");
						        }
						    });
				       }, 1000);
				       
				       // Get data now
				       $.get($(elem).data(\'poload\'), function(d) {
				            ' . ((defined('DEBUGGING') && DEBUGGING == 1) ? 'console.log(d);' : '') . '
				            var data = JSON.parse(d);
					        cachedUsers[$(elem).data(\'poload\')] = data;
					        // Preload image
					        var tmp = document.createElement(\'div\');
					        tmp.innerHTML = data.html;
					        var img = tmp.getElementsByTagName(\'img\')[0];
					        var image = new Image();
					        image.src = img.src;
				       });
				    }
				   }).mouseleave(function (){
					   var elem = this;
					   if(timeoutId){
					        window.clearTimeout(timeoutId);
					        timeoutId = null;
					   } else {
					      setTimeout(function () {
					        if(!$(".popover:hover").length){
					          $(elem).popover("hide");
					        }
					      }, 200);
					   }
				   });
				});
				
			    function copyToClipboard(element) {
			      var $temp = $("<input>");
			      $("body").append($temp);
			      $temp.val($(element).text()).select();
			      document.execCommand("copy");
			      $temp.remove();

			      toastr.options.onclick = function () {};
			      toastr.options.progressBar = true;
			      toastr.options.closeButton = true;
			      toastr.options.positionClass = \'toast-bottom-left\'
			      toastr.success("' . $this->_language->get('general', 'copied') . '");
			    }
                
                
                
			'
		);
	    	
	    if (strpos($route, '/forum/topic/') !== false) {
			$this->addJSFiles(array(
			    $this->_template['path'] . 'js/jquery-ui.min.js' => array()
			));
	    }	
	    if (strpos($route, '/profile/') !== false) {
			$this->addJSFiles(array(
			    $this->_template['path'] . 'config/editoramigable/jquery.tinymce.min.js' => array(),
			    $this->_template['path'] . 'config/editoramigable/tinymce.min.js' => array()
			));
	    }	
	    if(defined('PAGE')){
			if(PAGE == 'cc_messaging'){ // cc_messaging = UserCP -> Messaging
				$this->addCSSFiles(array(
                    $this->_template['path'] . 'css/bootstrap-tokenfield.min.css' => array(),
					(defined('CONFIG_PATH') ? CONFIG_PATH : '') . '/core/assets/css/jquery-ui.min.css' => array()
				));

				$this->addJSFiles(array(
                    $this->_template['path'] . 'js/bootstrap-tokenfield.min.js' => array(),
					(defined('CONFIG_PATH') ? CONFIG_PATH : '') . '/core/assets/js/jquery-ui.min.js' => array()
				));

				$this->addJSScript(
					'
					 	$(\'#InputTo\').tokenfield({
					      autocomplete: {
					        source: allUsers,
					        delay: 100,
					        minLength: 3
					      },
					      showAutocompleteOnFocus: true
					    });
					'
				);
			}
        }