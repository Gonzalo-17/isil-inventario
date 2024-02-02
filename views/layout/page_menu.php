<!-- begin::Body -->

<body class="kt-header--fixed kt-header-mobile--fixed kt-subheader--enabled kt-subheader--transparent kt-aside--enabled kt-aside--fixed kt-page--loading">
    <!-- begin:: Header Mobile -->
    <div id="kt_header_mobile" class="kt-header-mobile kt-header-mobile--fixed ">
        <div class="kt-header-mobile__logo">
            <a href="index.html">
                <img alt="Logo" src="../../assets/media/logos/logo-6.png" />
            </a>
        </div>
        <div class="kt-header-mobile__toolbar">
            <button class="kt-header-mobile__toolbar-toggler kt-header-mobile__toolbar-toggler--left" id="kt_aside_mobile_toggler"><span></span></button>
            <button class="kt-header-mobile__toolbar-toggler" id="kt_header_mobile_toggler"><span></span></button>
            <button class="kt-header-mobile__toolbar-topbar-toggler" id="kt_header_mobile_topbar_toggler"><i class="flaticon-more"></i></button>
        </div>
    </div>
    <!-- end:: Header Mobile -->

    <!-- begin:: Root -->
    <div class="kt-grid kt-grid--hor kt-grid--root">
        <!-- begin:: Page -->
        <div class="kt-grid__item kt-grid__item--fluid kt-grid kt-grid--ver kt-page">
            <!-- begin:: Aside -->
            <button class="kt-aside-close " id="kt_aside_close_btn"><i class="la la-close"></i></button>
            <div class="kt-aside kt-aside--fixed kt-grid__item kt-grid kt-grid--desktop kt-grid--hor-desktop" id="kt_aside">
                <!-- begin::Aside Brand -->
                <div class="kt-aside__brand kt-grid__item " id="kt_aside_brand">
                    <div class="kt-aside__brand-logo">
                        <a href="http://localhost/template/views/tablero/index.php">
                            <img alt="Logo" src="../../assets/media/logos/logo-6.png" />
                        </a>
                    </div>
                    <div class="kt-aside__brand-tools">
                        <button class="kt-aside__brand-aside-toggler kt-aside__brand-aside-toggler--left" id="kt_aside_toggler"><span></span></button>
                    </div>
                </div>
                <!-- end:: Aside Brand -->
                <!-- begin:: Aside Menu -->
                <div class="kt-aside-menu-wrapper kt-grid__item kt-grid__item--fluid" id="kt_aside_menu_wrapper">
                    <div id="kt_aside_menu" class="kt-aside-menu " data-ktmenu-vertical="1" data-ktmenu-scroll="1" data-ktmenu-dropdown-timeout="500">
                        <ul class="kt-menu__nav ">
                            <li class="kt-menu__item kt-menu__item--submenu" aria-haspopup="true" data-ktmenu-submenu-toggle="hover">
                                <a href="http://localhost/template/views/tablero/index.php" class="kt-menu__link kt-menu__toggle"><i class="kt-menu__link-icon flaticon-home-2"></i><span class="kt-menu__link-text">Tablero</span></a>
                            </li>
                            <li class="kt-menu__item kt-menu__item--submenu" aria-haspopup="true" data-ktmenu-submenu-toggle="hover">
                                <a href="javascript:;" class="kt-menu__link kt-menu__toggle">
                                    <i class="kt-menu__link-icon flaticon-user-settings"> </i>
                                    <span class="kt-menu__link-text">Gestion de Usuario</span><i class="kt-menu__ver-arrow la la-angle-right"></i></a>
                                <div class="kt-menu__submenu ">
                                    <span class="kt-menu__arrow"></span>
                                    <ul class="kt-menu__subnav">
                                        <li class="kt-menu__item " aria-haspopup="true">
                                            <a href="http://localhost/template/views/persona/registrar.php" class="kt-menu__link ">
                                                <i class="kt-menu__link-bullet kt-menu__link-bullet--dot"><span></span></i>
                                                <span class="kt-menu__link-text">Registro de Usuario</span>
                                            </a>
                                        </li>
                                        <li class="kt-menu__item " aria-haspopup="true">
                                            <a href="http://localhost/template/views/persona/consulta.php" class="kt-menu__link ">
                                                <i class="kt-menu__link-bullet kt-menu__link-bullet--dot"><span></span></i>
                                                <span class="kt-menu__link-text">Consulta de Usuario</span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- end:: Aside Menu -->

            </div>
            <!-- end:: Aside -->
            <!-- begin:: Wrapper -->
            <div class="kt-grid__item kt-grid__item--fluid kt-grid kt-grid--hor kt-wrapper" id="kt_wrapper">
                <!-- begin:: Header -->
                <div id="kt_header" class="kt-header kt-grid__item kt-header--fixed ">
                    <!-- begin:: Header Menu -->
                    <div class="kt-header-menu-wrapper" id="kt_header_menu_wrapper">
                        <button class="kt-header-menu-wrapper-close" id="kt_header_menu_mobile_close_btn"><i class="la la-close"></i></button>
                    </div>
                    <!-- end:: Header Menu -->
                    <!-- begin:: Header Topbar -->
                    <div class="kt-header__topbar">
                        
                        <!--begin: User Bar -->
                        <div class="kt-header__topbar-item kt-header__topbar-item--user">
                            <div class="kt-header__topbar-wrapper" data-toggle="dropdown" data-offset="0px, 0px">
                                <div class="kt-header__topbar-user">
                                    <span class="kt-header__topbar-welcome kt-hidden-mobile">Hola,</span>
                                    <span class="kt-header__topbar-username kt-hidden-mobile"><?php echo $_SESSION["Nombre"] ?> </span>                                   
                                    <img alt="Pic" src="../../assets/media/users/default.jpg" />
                                    <!--use below badge element instead the user avatar to display username's first letter(remove kt-hidden class to display it) -->
                                    <span class="kt-badge kt-badge--username kt-badge--lg kt-badge--brand kt-hidden kt-badge--bold">S</span>
                                </div>
                            </div>
                            <div class="dropdown-menu dropdown-menu-fit dropdown-menu-right dropdown-menu-anim dropdown-menu-top-unround dropdown-menu-sm">
                                <div class="kt-user-card kt-margin-b-50 kt-margin-b-30-tablet-and-mobile" style="background-image: url(../../assets/media/misc/head_bg_sm.jpg)">
                                    <div class="kt-user-card__wrapper">
                                        <div class="kt-user-card__pic">
                                            <img alt="Pic" src="../../assets/media/users/default.jpg" />
                                        </div>
                                        <div class="kt-user-card__details">
                                            <div class="kt-user-card__name"><?php echo $_SESSION["Nombre"] ?>
                                        </div>
                                            
                                            <div class="kt-user-card__name"> <?php echo $_SESSION["Apellidos"] ?></div>
                                        </div>
                                    </div>
                                </div>
                                <ul class="kt-nav kt-margin-b-10">
                                    <li class="kt-nav__item">
                                        <a href="custom_user_profile-v1.html" class="kt-nav__link">
                                            <span class="kt-nav__link-icon"><i class="flaticon2-calendar-3"></i></span>
                                            <span class="kt-nav__link-text">Mi perfil</span>
                                        </a>
                                    </li>                                                                 
                                    <li class="kt-nav__item kt-nav__item--custom kt-margin-t-15"> <a href="../Logout/logout.php" class="btn btn-outline-metal btn-hover-brand btn-upper btn-font-dark btn-sm btn-bold">Cerrar Sesión</a> </li>
                                </ul>
                            </div>
                        </div>
                        <!--end: User Bar -->

                    </div>
                    <!-- end:: Header Topbar -->
                </div>
                <!-- end:: Header -->
                <div class="kt-grid__item kt-grid__item--fluid kt-grid kt-grid--hor">
                    <br>
                </div>