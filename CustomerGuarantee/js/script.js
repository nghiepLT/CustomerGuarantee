// applyFilter
var applyFilter = function(hook, data, callback){
    var url = `${root}product/ajax/${hook}`;
    $.ajax({
        url: url,
        data: data,
        type: 'post',
        dataType: 'json',
        success: function(response) {
            callback(response);
        }
    });
}

//$(function(){
//    APP.init();
//    $('.shortcode').each(function(){		
//        var $this = this;
//        applyFilter('shortcode', {
//            content: $this.innerHTML,
//        }, function(response){
//            $this.innerHTML = response;
//        });
//    });
//});

var APP = 
{
    elmCheck: function(elm){
        return $('body, html').find(elm).length;
    },
    checkWindow: function(elm, w, cls, fix){
        var box = $(elm);
        if(w<fix)
        {
            box.addClass(cls);
            $('body').addClass('mobile');
        }
        else
        {
            box.removeClass(cls);
            $('body').removeClass('mobile');
        }
    },
    loadStatistics: function(){
        $.ajax({
            type: "POST",
            url: ajaxurl + "?do=statistics",
            dataType: 'json',
            success: function(data) {
                $("#counter-hits").html(data.hits);
                $("#counter-online").html(data.online);
            }
        });
    },
    popupWebsite: function(times){
        $.ajax({
            url: ajaxurl + "?do=popupWebsite",
            type: 'POST',
            dataType: 'json',
            data: {
                lang: lang
            },
            success: function (data) {
                setTimeout(function(){
                    APP.openPopup(data);
                }, times);
            }
        });
    },
    openPopup: function(data){
        if(data)
        {
            $.fancybox.open({
                content  : data,
                autoSize : false,
                width    : "auto",
                height : "auto",
                padding: 0,
                autoScale: true,
                transitionIn: "elastic",
            });
        }
    },
    scrollTop: function(obj, height, time) {
        $(obj).on('click', function(){
            $('body,html').animate({scrollTop: 0}, time);
        });
    },
    newsletter: function(){
        var email = $('input[name=femail]').val();
        $.ajax({
            type: "POST",
            url: ajaxurl + '?do=newsletter',
            dataType: 'json',
            data: {
                email: email,
                lang: lang,
            },
            success: function(mess) {
                $('input[name=femail]').val('');
                APP.openPopup(mess);
            }
        });
    },
    checkScroll: function(box, height, cls) {
        $(window).scroll(function()
        {
            $('.sticky-menu').removeClass('open');
            $('.box-menu-product').removeClass('open');
            var obj = $(box);
            if($(window).scrollTop()>height)
            {
                obj.addClass(cls);
            }
            else
            {
                obj.removeClass(cls);
            }
        });
    },
    fixedMenu: function(box) {
        var btn = $('.menu-box').find('.box-title');
        var content = $('.search-box').find('.box-content');
        btn.on('click', function(){
            if($(this).parents(box).hasClass('open'))
            {
                $(box).removeClass('open');
            }
            else
            {
                $(box).addClass('open');
            }
        });
    },
    slimScroll: function(elm, height){
        if(APP.elmCheck(elm))
        {
            $(elm).slimScroll({
                width: '100%',
                height: height,
                color: '#222',
                railOpacity: 0.5,
            });
        }
    },
    clone: function(elm_from, elm_to){
        $(elm_from).clone().appendTo(elm_to);
    },
    toggleBoxSidebar: function(){
        var box = $('#box-sidebar.toggle');
        var btn = box.find('.widget-title');
        var content = box.find('.widget-content');
		
        var txt = btn.text();
        if(box.find('.active').length)
        {
            txt = box.find('.active').text();
        }
        btn.text(txt);
        btn.on('click', function(){
            if(box.hasClass('open'))
            {
                content.stop().slideUp();
                box.removeClass('open');
            }
            else
            {
                content.stop().slideDown();
                box.addClass('open');
            }
        });
    },
    toggleFooterMenu: function(){
        var box = $('.footer-widget.toggle');
        var btn = box.find('h3');
        var content = box.find('ul');
        btn.on('click', function(){
            var _parent = $(this).parents('.footer-widget');
            if(_parent.hasClass('open'))
            {
                _parent.find('ul').stop().slideUp();
                _parent.removeClass('open');
            }
            else
            {
                box.removeClass('open');
                content.stop().slideUp();
                _parent.find('ul').stop().slideDown();
                _parent.addClass('open');
            }
        });
    },
    btnMenu: function(w){
        var box = $('#header');
        if(w<768)
        {
            if(!APP.elmCheck('#btn-menu'))
            {
                box.prepend('<a id="btn-menu" href="#mmenu" class="fa-bars"></a>');
            }
            $('#mmenu').removeClass('hide');
        }
        else
        {
            $('#mmenu').addClass('hide');
            box.find('#btn-menu').remove();
        }
    },
    mmenu: function(elm){
        $(elm).mmenu({ 
            extensions: [
				"theme-light",
				"effect-menu-slide",
            ],
            offCanvas: {
                position  : "right",
                zposition : "front"
            },
            slidingSubmenus: true,
        });
        var API = $(elm).data("mmenu");
        /* 
			$("#btnMenu").click(function() {
			API.open();
			}); 
		*/
        $('.mm-btn-close').click(function() {
            API.close();
        });
    },
    chungnhanSlide: function(elm){
        if(APP.elmCheck(elm))
        {
            var owl = $(elm);
            owl.owlCarousel({
                nav:false,
                autoplay:false,
                loop:false,
                dots:false,
                autoplayTimeout: 4000,
                autoplayHoverPause:true,
                autoplaySpeed:3000,
                items:5,
            });
        }
    },
    bankSlide: function(elm){
        if(APP.elmCheck(elm))
        {
            var owl = $(elm);
            owl.owlCarousel({
                nav:false,
                autoplay:false,
                loop:false,
                dots:false,
                autoplayTimeout: 4000,
                autoplayHoverPause:true,
                autoplaySpeed:3000,
                items:8,
                margin: 10,
            });
        }
    },
    nhabanleSlide: function(elm){
        if(APP.elmCheck(elm))
        {
            var owl = $(elm);
            owl.owlCarousel({
                nav:false,
                autoplay:false,
                loop:false,
                dots:false,
                autoplayTimeout: 4000,
                autoplayHoverPause:true,
                autoplaySpeed:3000,
                items:4,
                margin: 10,
            });
        }
    },
    pertnerSlide: function(elm){
        if(APP.elmCheck(elm))
        {
            var owl = $(elm);
            owl.owlCarousel({
                nav:false,
                autoplay:false,
                loop:false,
                dots:false,
                autoplayTimeout: 4000,
                autoplayHoverPause:true,
                autoplaySpeed:3000,
                items:5,
                margin: 10,
            });
        }
    },
    countDownDate: function(elm, date){
		
        $(elm).each(function(index, obj){

            var date = $(obj).data('date');

            // Set the date we're counting down to
            var countDownDate = new Date(date).getTime();

            // Update the count down every 1 second
            var x = setInterval(function() {

                // Get todays date and time
                var now = new Date().getTime();
			    
                // Find the distance between now and the count down date
                var distance = countDownDate - now;
			    
                // If the count down is over, write some text 
                //if (distance < 0) 
                //{
                // clearInterval(x);
                // $(obj).innerHTML = "EXPIRED";
                //$(obj).parents('.product').remove();
                //}
			    
                // Time calculations for days, hours, minutes and seconds
                var days = Math.floor(distance / (1000 * 60 * 60 * 24));
                var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
                var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
                var seconds = Math.floor((distance % (1000 * 60)) / 1000);
			    
                $(obj).find('li').each(function(i, e){
                    switch(i)
                    {
                        case 0:
                            $(e).find('.row0').html(days);
                            break;
                        case 1:
                            $(e).find('.row0').html(hours);
                            break;
                        case 2:
                            $(e).find('.row0').html(minutes);
                            break;
                        default:
                            $(e).find('.row0').html(seconds);
                            break;
                    }
                });
			    
            }, 1000);
        });
    },
    menuPrimary: function(){
        $('.primary-menu>li>.sub-menu').each(function(i, e){
            $(e).addClass('sub-menu-parent');
            $(e).parent().addClass('has-sub-menu');
            $(e).wrap('<div class="sub-menu-wrap"></div>');
        });
    },
    ajaxSearch: function(){
        $('.text-search').on('keyup', function(){
            var keyword = $(this).val();
            var box_result = $(this).parents('form').find('.result');
            console.log(keyword);
            $.ajax({
                url: ajaxurl + '?do=ajaxSearch',
                type: 'POST',
                dataType: 'json',
                data: {
                    keyword: keyword,
                    lang: lang
                },
                success: function (res) {
                    if(res)
                    {
                        $('body').addClass('open-result-search');
                        box_result.addClass('open');
                    }
                    else
                    {
                        $('body').removeClass('open-result-search');
                        box_result.removeClass('open');
                    }
                    box_result.html(res);
                }
            });
        });
    },
    scrollPage: function(obj, height, time){
        $(window).scroll(function () 
        {
            if ($(window).scrollTop() > height) 
            {
                $(obj).fadeOut(time);
                if($(obj).hasClass('open'))
                {
                    $('body').removeClass('open-result-search');
                }
            }
            else
            {
                $(obj).fadeIn(time);
                if($(obj).hasClass('open'))
                {
                    $('body').addClass('open-result-search');
                }
            }
        });
    },
    menuScroll: function(h){
        if(!APP.elmCheck('.scrollMenu').length)
        {
            $('body').prepend('<div class="scrollMenu"><div class="wrapper"></div></div>');
            var menuWrapper = $('.scrollMenu').find('.wrapper');
            $('div.menu-product').clone().appendTo(menuWrapper);			
            $('.menu-list:first').appendTo($('.scrollMenu .menu-product'));
            $('.scrollMenu .menu-list').removeClass('hide');
            $('.scrollMenu .menu-list').wrap('<div class="menu-list-wrap"></div>');
			
            $('.box-search').clone().appendTo(menuWrapper);
            $('div.menu-main').clone().appendTo(menuWrapper);
            menuWrapper.find('.main-menu li').each(function(i,e){
                if(!$(e).hasClass('khuyen-mai'))
                {
                    $(e).remove();
                }
            });
            $('.box-hotline').clone().appendTo(menuWrapper);
            menuWrapper.find('.box-hotline span:first').remove();
            $('.box-mini-cart').clone().appendTo(menuWrapper);
            menuWrapper.find('.box-mini-cart .lbl').remove();
            menuWrapper.append('<div class="box-support-online"></div>');
            menuWrapper.find('.box-support-online').append('<label></label>');
            menuWrapper.find('.box-support-online label').text('LiĂªn há»‡ tÆ° váº¥n');
            menuWrapper.find('.box-support-online').append($('.box-support-scroll'));
            $(window).scroll(function () 
            {
                if ($(window).scrollTop()>h)
                {
                    $('body').addClass('open-scroll-menu');
                    $('.scrollMenu>.wrapper>.menu-product').on('mouseenter', function(){
                        $('body').addClass('open-menu-list');
                    });
                    $('.scrollMenu>.wrapper>.menu-product').on('mouseleave', function(){
                        $('body').removeClass('open-menu-list');
                    });
                }
                else
                {
                    $('body').removeClass('open-scroll-menu');	
                }
            });
            $('.box-support-online').on('mouseenter', function(){
                $('body').addClass('open-box-support');
            });
            $('.box-support-online').on('mouseleave', function(){
                $('body').removeClass('open-box-support');
            });
        }
        APP.navMenu();
        APP.ajaxSearch();
    },
    navMenu: function(){
        if(mod!='main')
        {
            var box = $('#navigation .menu-product');
            if(!$('#navigation').find('.menu-list-wrap').length)
            {
                $('.menu-list-wrap').clone().appendTo(box);
                box.on('mouseenter', function(){
                    $('body').addClass('open-nav-menu');
                });
                box.on('mouseleave', function(){
                    $('body').removeClass('open-nav-menu');
                });
            }
        }
    },
    topbarMenu:function(){
        var box = $('.support-menu');
        box.find('li.icon-skype').each(function(i, e){
            var group = $(e).data('name');
            $('.box-support-scroll-inner').clone().appendTo($(e));
            $(e).find('.support-columns').each(function(i,e){
                if(!$(e).hasClass(group))
                {
                    $(e).remove();
                }
            });
            $(e).on('mouseenter', function(){
                $(this).find('.box-support-scroll-inner').show();
            });
            $(e).on('mouseleave', function(){
                $(this).find('.box-support-scroll-inner').hide();
            });
        });
    },
    init: function(){
		
        APP.navMenu();
        APP.menuPrimary();
        APP.countDownDate('ul.deal-time');
		
        //APP.loadStatistics();
		
        /* scroll top */
        APP.scrollTop('#scroll-top', 0, 400);
		
        //APP.chungnhanSlide('.adv-chungnhan');
        //APP.nhabanleSlide('.adv-nhabanle');
        //APP.pertnerSlide('.adv-partner');
        //APP.bankSlide('.box-bank .adv-bank');
		
        APP.scrollPage('#result.open', 57, 600);
        APP.topbarMenu();
        APP.ajaxSearch();
        $('input').attr('autocomplete', 'off');
        //n2 update fix hover tooltip autoclick
        /*$(document).on('click', '.product .tool-tip', function(){
			var link = $(this).find('a:first').attr('href');
			window.location.href = link;
		});*/
        $(document).on('click', '.product .tool-tip', function(){
            var link = $(this).parent().find('a:first').attr('href');
            window.location.href = link;
        });
		
        switch(mod)
        {
            case 'main': APP.menuScroll(565); break;
            default: APP.menuScroll(150); break;
        }
		
        /* mouseenter menu product */
        $(document).on('mouseenter', '.primary-menu>li', function(){
            var menu_id;
            menu_id = $(this).data('menu');
            $('.menu-list>.sub-menu-wrap').remove();
            if($(this).find('.sub-menu-wrap').length>0)
            {
                $(this).find('.sub-menu-wrap').clone().appendTo('.menu-list');
                $('.menu-list>.sub-menu-wrap').addClass('open');
            }
            else
            {
                $('.menu-list>.sub-menu-wrap').remove();
            }
        });
		
        /* mouseleave menu product */
        $(document).on('mouseleave', '.content-top', function(){
            $('.menu-list>.sub-menu-wrap').remove();
        });
		
        /* Show content */
        //$('#pvt-main').fadeIn();
    }
}

/**************************************************************************/
var INPUT = 
{
    is_num: function(event){
        if (event.srcElement) {kc =  event.keyCode;} else {kc =  event.which;}
        if ((kc < 47 || kc > 57) && kc != 8 && kc != 0) return false;
        return true;
    }
}

// doLogin
var doLogin = function(el){
    el.checked = false;
    // var ok = confirm('ÄÄƒng kĂ½ thĂ´ng tin Ä‘á»ƒ sá»­ dá»¥ng bá»™ lá»c nĂ y?.\n\nBáº¥m "OK" Ä‘á»ƒ tiáº¿p tá»¥c. "Há»§y" Ä‘á»ƒ dá»«ng láº¡i.');
    // if(ok)
    // {
    // loadModal({
    // name: 'advanced_search',
    // });
    // }
	
    loadModal({
        name: 'advanced_search',
    });
}

// loadModal
var loadModal = function({name, data}, callback){
	
    var modal, html, body = document.body;
    modal = document.getElementById('modal-'+name);
	
    $.ajax({
        type: 'post',
        url: ajaxurl+'?do=loadModal',
        data: {
            name: name,
            data: data,
        },
        dataType: 'json',
        beforeSend: () => {
            $(modal).modal('hide');
        },
        success: (response) => {
            if(callback && typeof callback === 'function') {
                callback(response);
            } else {
                html = response.data;
                $(body).append(html);
                $('#modal-'+name).modal('show');
            }
        }
    });
};

    // sendFormSearch
    var sendFormSearch = function(f){
	
        $.ajax({
            type: f.method,
            url: ajaxurl+'?do=formSearch',
            data: $(f).serializeArray(),
            dataType: 'json',
            beforeSend: () => {
                $(f).find('button[type=submit]').prepend('<i class="fa fa-spinner fa-spin"></i> ');
                $(f).find('button[type=submit]').attr('type', 'button');
            },
            success: (response) => {
                // alert(response.message);
                window.location.reload();
            }
        });
	
        return false;
    };