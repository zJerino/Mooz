</main>
{if isset($GLOBAL_WARNING_TITLE)}
    <div class="modal-open modal fade show" id="modal-acknowledge" tabindex="-1" role="dialog" aria-labelledby="modal-acknowledge" aria-modal="true" style="padding-right: 10px; display: block;">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">{$GLOBAL_WARNING_TITLE}</h5>
                </div>
                <div class="modal-body">
                    <p>{$GLOBAL_WARNING_REASON}</p>
                </div>
                <div class="modal-footer">
                    <a href="{$GLOBAL_WARNING_ACKNOWLEDGE_LINK}" class="btn btn-secondary">{$GLOBAL_WARNING_ACKNOWLEDGE}</a>
                </div>
            </div>
        </div>
    </div>
    <div class="modal-backdrop fade show"></div>
{/if}

<div id="root"></div>
  
    {if isset($NEW_UPDATE) && ($NEW_UPDATE_URGENT != true)}
        <script src="{$TEMPLATE.path}/js/core/update.js"></script>
    {/if}
<span class="ir-arriba fa fa-angle-up fa-fw"></span>
</main>
        <footer>
            <div class="footer">
                <div class="row">
                    <div class="col">
                        <h1>{$MZ_LANG.0}</h1>
                        <p>
                            {$MZ_FS.FTEXTO}
                        </p>
                    </div>
                    <div class="col  d-none d-sm-none d-md-block">
                        <h1>{$MZ_LANG.1}</h1>
                        <p>
                            {foreach from=$FOOTER_NAVIGATION key=name item=item}
                                {if isset($item.items)}
                                    {* Dropup *}
                                    <li class="nav-item">
                                        <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                                            {$item.icon} {$item.title}
                                        </a>
                                        <div class="dropdown-menu">
                                            {foreach from=$item.items item=dropdown}
                                                <a class="dropdown-item" href="{$dropdown.link}" target="{$dropdown.target}">
                                                    {$dropdown.icon} {$dropdown.title}
                                                </a>
                                            {/foreach}
					                    </div>
                                    </li>
                                {else}
                                    {* Normal link *}
                                    <li class="nav-link" style="padding: 4px 1rem;">
                                        <a class="nav-item" href="{$item.link}">{$item.title}</a>
                                    </li>
                                {/if}
                            {/foreach}
                            <li class="nav-link" style="padding: 4px 1rem;">
                                <a class="nav-item" href="{$TERMS_LINK}">{$TERMS_TEXT}</a>
                            </li>
                            <li class="nav-link" style="padding: 4px 1rem;">
                                <a class="nav-item" href="{$PRIVACY_LINK}">{$PRIVACY_TEXT}</a> 
                            </li>
                        </p>
                    </div>
                    <div class="col">
                        <h1>Social</h1>
                        <p>
                            {foreach from=$SOCIAL_MEDIA_ICONS item=icon}
                                <a href="{$icon.link}"><i class="{if $icon.long neq 'envelope'}fab{else}fas{/if} fa-{$icon.long}-square fa-3x blanco"></i></a>
                            {/foreach}
                        </p>
                    </div>
                    <div class="col-12">
                        <div class="container">
                            <span class="float-left">
                                {if $PAGE_LOAD_TIME}
                                    <a data-toggle="tooltip" id="page_load"></a>
                                {else}
                                    Powered By <a href="https://namelessmc.com/">NamelessMC</a>
                                {/if}
                            </span>
                            <span class="float-right">
                                Mooz Template By <a href="https://LaboratorioMC.com.ve"><strong  class="LB-COPY"><svg xmlns="http://www.w3.org/2000/svg" width="4098" height="1175" viewBox="0 0 4098 1175" fill="none">
<path d="M649.693 1170.49C641.393 1170.49 636.266 1164.88 634.312 1153.65L630.65 1118.49L13.2188 1144.13C4.91797 1144.13 0.523438 1138.27 0.0351562 1126.55L11.7539 999.107C12.7305 991.295 16.6367 986.656 23.4727 985.191L124.547 989.586L131.139 183.922L31.5293 193.443C26.1582 193.443 22.7402 192.223 21.2754 189.781C19.8105 187.34 18.834 183.189 18.3457 177.33L11.7539 45.4941C12.2422 34.2637 18.1016 28.6484 29.332 28.6484L384.557 22.7891C393.834 23.7656 399.205 29.3809 400.67 39.6348L414.586 168.541C414.586 175.377 412.877 179.771 409.459 181.725C406.529 183.189 402.623 184.166 397.74 184.654L290.807 180.992L288.609 985.924L615.27 969.078L602.086 840.904C602.086 831.627 607.701 826.5 618.932 825.523L737.584 814.537C757.115 814.537 767.369 824.059 768.346 843.102L781.529 1133.87C780.553 1145.1 775.182 1151.45 765.416 1152.92L649.693 1170.49ZM1513.95 556.725C1667.76 588.463 1744.66 676.842 1744.66 821.861C1744.66 994.225 1662.63 1097.98 1498.57 1133.14C1444.86 1144.37 1392.61 1149.99 1341.83 1149.99C1291.05 1149.99 1246.86 1149.01 1209.26 1147.06C1171.67 1145.59 1134.8 1143.39 1098.67 1140.46C977.086 1130.7 913.121 1120.93 906.773 1111.17C904.332 1107.26 902.867 1102.38 902.379 1096.52L908.971 988.854C909.947 975.182 917.76 968.346 932.408 968.346C947.057 968.346 976.109 971.275 1019.57 977.135V172.203C980.504 174.645 952.428 175.865 935.338 175.865C918.736 175.865 909.947 169.029 908.971 155.357L902.379 52.8184C903.355 39.6348 909.215 32.0664 919.957 30.1133C1032.75 10.0938 1155.55 0.0839844 1288.37 0.0839844C1548.62 0.0839844 1678.75 102.379 1678.75 306.969C1678.75 407.555 1647.01 479.332 1583.53 522.301C1563.02 536.461 1539.83 547.936 1513.95 556.725ZM1183.63 996.178C1227.57 998.619 1268.59 999.84 1306.68 999.84C1344.76 999.84 1380.89 997.887 1415.07 993.98C1449.74 989.586 1479.53 981.285 1504.43 969.078C1557.16 942.711 1583.53 894.127 1583.53 823.326C1583.53 724.693 1531.29 668.785 1426.79 655.602C1396.03 651.695 1358.92 649.742 1315.46 649.742C1272.5 649.742 1228.55 651.939 1183.63 656.334V996.178ZM1380.65 156.09C1353.79 151.695 1324.99 149.498 1294.22 149.498C1263.46 149.498 1226.6 151.695 1183.63 156.09V512.779C1197.79 513.756 1211.95 514.244 1226.11 514.244H1269.32C1349.4 514.244 1408.73 501.793 1447.3 476.891C1492.71 448.082 1515.42 397.545 1515.42 325.279C1515.42 227.135 1470.49 170.738 1380.65 156.09ZM2819.13 1136.8C2808.38 1136.8 2802.53 1131.92 2801.55 1122.15L2806.68 999.107C2807.65 989.83 2811.56 985.191 2818.39 985.191H2868.93L2824.99 159.752L2591.34 1131.68C2589.39 1141.44 2583.53 1146.32 2573.77 1146.32L2418.49 1148.52C2409.7 1148.52 2404.09 1143.15 2401.65 1132.41L2159.21 193.443L2137.97 980.797L2205.36 977.867C2211.71 977.867 2215.61 982.506 2217.08 991.783L2229.53 1122.15C2228.55 1131.92 2222.69 1136.8 2211.95 1136.8L1894.08 1141.93C1885.78 1141.93 1881.38 1136.07 1880.89 1124.35L1889.68 987.389C1890.66 979.576 1894.57 974.938 1901.4 973.473L1998.08 982.262L2041.29 190.514L1950.47 199.303C1940.71 199.303 1935.58 193.932 1935.09 183.189L1928.5 46.959C1929.48 37.6816 1935.34 32.5547 1946.08 31.5781L2246.37 15.4648C2260.53 15.4648 2269.57 22.3008 2273.47 35.9727L2506.38 964.684L2737.83 42.5645C2740.76 28.8926 2749.79 22.0566 2764.93 22.0566L3052.77 24.2539C3058.63 25.2305 3062.78 26.6953 3065.22 28.6484C3068.15 30.1133 3069.86 33.7754 3070.35 39.6348L3078.4 183.189C3077.43 189.049 3076.21 193.199 3074.74 195.641C3073.77 198.082 3070.59 199.303 3065.22 199.303L2975.13 198.57L3024.94 982.994L3122.35 980.797C3129.19 982.262 3133.09 986.9 3134.07 994.713L3120.88 1117.03C3118.93 1128.75 3114.54 1134.61 3107.7 1134.61L2819.13 1136.8ZM4046.67 18.3945C4066.2 18.3945 4076.45 27.916 4077.43 46.959L4068.64 366.295C4068.64 378.99 4063.27 385.338 4052.53 385.338L3929.48 388.268C3920.2 388.268 3915.07 382.652 3914.1 371.422L3898.72 183.189C3839.15 168.541 3784.21 161.217 3733.92 161.217C3683.63 161.217 3641.15 168.785 3606.48 183.922C3571.81 198.57 3543.25 222.496 3520.79 255.699C3477.33 320.152 3455.6 427.818 3455.6 578.697C3455.6 806.725 3510.78 943.199 3621.13 988.121C3657.26 1002.77 3701.21 1010.09 3752.96 1010.09C3804.72 1010.09 3859.41 1000.82 3917.03 982.262L3913.37 884.117C3914.34 875.328 3920.2 869.957 3930.94 868.004L4052.53 847.496C4060.83 847.496 4065.95 853.111 4067.91 864.342L4097.2 1149.99C4097.2 1157.8 4091.59 1162.19 4080.36 1163.17L3954.38 1174.16C3934.85 1174.16 3924.6 1164.63 3923.62 1145.59L3922.15 1114.83C3854.28 1150.96 3782.51 1169.03 3706.82 1169.03C3631.63 1169.03 3568.15 1156.09 3516.39 1130.21C3465.12 1104.33 3422.15 1066.25 3387.49 1015.95C3317.66 913.902 3282.75 765.465 3282.75 570.641C3282.75 377.281 3321.81 233.727 3399.94 139.977C3471.23 54.0391 3573.03 11.0703 3705.36 11.0703C3788.37 11.0703 3858.19 20.3477 3914.83 38.9023L4046.67 18.3945Z" fill="url(#paint0_angular)"/>
<defs>
<radialGradient id="paint0_angular" cx="0" cy="0" r="1" gradientUnits="userSpaceOnUse" gradientTransform="translate(1620 -8195) rotate(89.4506) scale(18980.4 36560.2)">

<stop offset="1" stop-color="#fff" style="&#10;    stop-color: rgb(126, 127, 128);&#10;    color: rgb(126, 127, 128);&#10;"/>
</radialGradient>
</defs>
</svg></strong></a>
                            </span>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        {foreach from=$TEMPLATE_JS item=script}
            {$script}
        {/foreach}
        {foreach from=$fspeedjs item=scripts}
            {$scripts}
        {/foreach}
        
        {if isset($MAINTENANCE_ENABLED)}
            <script type="text/javascript">toastr.error(Mantenimiento)</script>
        {/if}
        {if ($smarty.const.PAGE == "members")}
            {literal}
                <script>
                    $.extend( true, $.fn.dataTable.defaults, {
                        "searching": true,
                        "lengthChange": false,
                        "info": false,
                        "ordering": true
                    });
	                $(document).ready(function() {
		                $('#tablaprro').dataTable({
    			            responsive: true,
			                language: {
				                "lengthMenu": "Display _MENU_ records per page",
				                "zeroRecords": "No results found",
				                "info": "Showing page _PAGE_ of _PAGES_",
				                "infoEmpty": "No records available",
				                "infoFiltered": "(filtered from _MAX_ total records)",
				                "search": "Search ",
				                "paginate": {
					                "next": "Next",
					                "previous": "Previous"
				                }
			                }
		                });
	                });
                </script>
            {/literal}
        {/if}
        
    {foreach from=$PARTICLESJS item=PJS}{$PJS}{/foreach}
</body>
</html>