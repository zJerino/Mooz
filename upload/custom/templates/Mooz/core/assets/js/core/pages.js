if (page !== '') {
	
	if (page === 'status') {
		$(function() {
			$(".server").each(function() {
				let serverID = $(this).data("id");
				let serverBungee = $(this).data("bungee");
				let serverPlayerList = $(this).data("players");
				let serverElem = '#server' + serverID + '[data-id=' + serverID + ']';
				let estado = '#estadoserver' + serverID;
				
				$.getJSON(URLBuild('queries/server/?id=' + serverID), function(data){
					var content = '';
					var players = '';
					if (data.status_value === 1) {
						$(serverElem).addClass("green");
						$(estado).removeClass("text-info");
						$(estado).addClass("text-success");
						content = data.player_count + "/" + data.player_count_max;
						if (serverBungee === 1) {
							players = bungeeInstance;
						} else {
							if (serverPlayerList === 1) {
								if (data.player_list.length > 0) {
									for (var i = 0; i < data.player_list.length; i++) {
										players += '<a href="' + URLBuild('profile/' + data.player_list[i].name) + '" data-tooltip="' + data.player_list[i].name + '" data-variation="mini" data-inverted="" data-position="bottom center"><img class="ui mini circular image" src="' + avatarSource.replace('{x}', data.player_list[i].id).replace('{y}', 64) + '" alt="' + data.player_list[i].name + '"></a>';
									}
								
									if(data.player_list.length < data.player_count) {
										players += '<span class="ui blue circular label">+' + (data.player_count - data.player_list.length) + '</span>';
									}
									
								} else {
									players += noPlayersOnline;
								}
							}
						}
					} else {
						$(serverElem).addClass("red");
						$(estado).removeClass("text-info");
						$(estado).addClass("text-danger");
						content = offline;
						players = noPlayersOnline;
					}
										
					$(serverElem).find('#server-status').html(content);
					$(serverElem).find('#server-players').html(players);
				});
			});
		});
	} else if (page === 'profile') {
        $("#comentarios-fb").emojioneArea({
                hideSource: true,
                search            : true,
                placeholder       : null,
                emojiPlaceholder  : ":smiley:",
                hideSource        : true,
                shortnames        : true,
                sprite            : true,
                pickerPosition    : "top", // top | bottom | right
                filtersPosition   : "bottom", // top | bottom
                searchPosition    : "top", // top | bottom
                hidePickerOnBlur  : true,
                buttonTitle       : "Pulse tab",
                tones             : false,
                saveEmojisAs      : "unicode", // unicode | shortname | image
                shortcuts         : true,
                autocomplete      : true,
                autocompleteTones : false,
                standalone        : false,
                useInternalCDN    : true, // Use the self loading mechanism
                recentEmojis      : true,
                events: {
                    keyup: function (editor, event) {
                        console.log(editor.html());
                        console.log(this.getText());
                    }
                }
            });
        $('INPUT[type="text"]').emojioneArea({
                hideSource: true,
                search            : true,
                placeholder       : null,
                emojiPlaceholder  : ":smiley:",
                hideSource        : true,
                shortnames        : true,
                sprite            : true,
                pickerPosition    : "top", // top | bottom | right
                filtersPosition   : "bottom", // top | bottom
                searchPosition    : "top", // top | bottom
                hidePickerOnBlur  : true,
                buttonTitle       : "Pulse tab",
                tones             : false,
                saveEmojisAs      : "unicode", // unicode | shortname | image
                shortcuts         : true,
                autocomplete      : true,
                autocompleteTones : false,
                standalone        : false,
                useInternalCDN    : true, // Use the self loading mechanism
                recentEmojis      : true,
                events: {
                    keyup: function (editor, event) {
                        console.log(editor.html());
                        console.log(this.getText());
                    }
                }
            });
		function showBannerSelect(){
			$('#imageModal').modal({
				onVisible: function() {
					$("select").imagepicker();
				}
			}).modal('show');
		}
	} else if (page === 'cc_messaging') {
        $("#COMENTARIOS").emojioneArea({
                hideSource: true,
                search            : true,
                placeholder       : null,
                emojiPlaceholder  : ":smiley:",
                hideSource        : true,
                shortnames        : true,
                sprite            : true,
                pickerPosition    : "top", // top | bottom | right
                filtersPosition   : "bottom", // top | bottom
                searchPosition    : "top", // top | bottom
                hidePickerOnBlur  : true,
                buttonTitle       : "Pulse tab",
                tones             : false,
                saveEmojisAs      : "unicode", // unicode | shortname | image
                shortcuts         : true,
                autocomplete      : true,
                autocompleteTones : false,
                standalone        : false,
                useInternalCDN    : true, // Use the self loading mechanism
                recentEmojis      : true,
                events: {
                    keyup: function (editor, event) {
                        console.log(editor.html());
                        console.log(this.getText());
                    }
                }
            });
	}
	
	else if (route.indexOf("/forum/topic/") != -1) {
		$(function() {
			var postId = window.location.hash.replace('#post-', '');
			var postElem = '#topic-post[post-id=\'' + postId + '\']';
			setTimeout(function(){
			   $('html, body').animate(
                   {
                       scrollTop: $(postElem).offset().top-15
                   }, 1800);
			}, 100);
			$('.card.card-news', postElem).delay(600).effect("highlight", {}, 800);
            console.clear();
		});
	}
}


$(document).ready(function() {
    console.log('Este sitio web esta usando Mooz template Creando por zJerino');
});